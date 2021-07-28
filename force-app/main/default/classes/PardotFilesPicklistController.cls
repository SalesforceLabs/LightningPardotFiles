global with sharing class PardotFilesPicklistController extends VisualEditor.DynamicPickList {

    //TO Be packaged:
    //Custom Metadata Type: Pardot Files Component Setting
    //Remote Site Settings: Pardot_Files_Salesforce_Endpoint

    //Create connected app with pardot_api


    Object[] extensionNames = new Object[] {
        'tif',
        'tiff',
        'bmp',
        'jpg',
        'jpeg',
        'gif',
        'png'
    };

    List <Map<String, String>> getErrorList( String subject, String message ) {
        return new List <Map<String, String>> {
            new Map<String, String>{'subject'=>subject, 'htmlMessage'=>'<div style="font-weight: 600;font-size: 18px;color: #ffffff;text-shadow: 0px 0px 2px #f44336;">' + message + '</div>'}
        };
    }

    String getExtensionName( String filename ) {
        return filename.substring( filename.lastIndexOfIgnoreCase('.') + 1, filename.length()).toLowerCase();
    }

    global override Boolean isValid(Object attributeValue){
        return true;
    }

    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select Pardot Files', '<h2>Select Pardot Files</h1>');
        return defaultValue;
    }
    
    //We need to send JSON string back. However, due to a bug in AppBuilder (EmailBuilder), DynamicPickList components do not work on save because of {} (curly bracket)
    //We will add this bracket on LWC side for now as a workaround
    global override VisualEditor.DynamicPickListRows getValues() {
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();

        List <Map<String, String>> items;
        List<Pardot_Files_Component_Setting__mdt> appSettings =  new List<Pardot_Files_Component_Setting__mdt>();
        try {
            appSettings = [SELECT Id, Business_Unit__c, Client_Id__c, Client_Secret__c, Pardot_API_URL__c, Username__c, Password__c FROM Pardot_Files_Component_Setting__mdt];
            if( appSettings.size() > 0 ) {
                Pardot_Files_Component_Setting__mdt appSetting =  appSettings[0];
                String accessToken = Calypso.getAccessToken(
                    appSetting.Client_Id__c,
                    appSetting.Client_Secret__c,
                    appSetting.Username__c,
                    appSetting.Password__c
                );
                if( accessToken.length() > 0 ) {
                    Map<String, Object> apiCallResult = Calypso.pardotAPICall(
                        appSetting.Pardot_API_URL__c,
                        accessToken,
                        'v5/objects/files?fields=id,name,url,createdBy.id,createdBy.username',
                        'GET',
                        'multipart/form-data',
                        appSetting.Business_Unit__c
                    );
        
                    if( (Boolean) apiCallResult.get('isSuccess') ) {
                        items = new List <Map<String, String>>();
                        List<Object> resultList = (List<Object>) ((Map<String, Object>) apiCallResult.get('result')).get('values');
                        for(Object itemObj: resultList){
                            Map<String, Object> itemFile = (Map<String, Object>) itemObj;
                            String urltxt   = (String) itemFile.get('url');
                            String name     = (String) itemFile.get('name');
    
                            String markup = '';
                            if( Calypso.listContains( extensionNames, (Object) getExtensionName( urltxt ) ) ) {
                                markup = '<img src="' + urltxt  + '" style="display:block; margin-left:auto; margin-right:auto;"></img>';
                            } else {
                                markup = '<a href="' + urltxt  + '" style="display:block; text-align:center;">' + name + '</a>';
                            }
                            items.add( new Map<String, String>{'subject'=>name, 'htmlMessage'=>markup} );
                        }
                    } else {
                        items = getErrorList( 'Error accessing Pardot API', 'Please check for the parameters' );
                    }
                } else {
                    items = getErrorList( 'Error obtaining access token', 'Please check for the credentials' );
                }
            } else {
                items = getErrorList( 'Settings Required', 'Please set the Pardot Files Component Metadata Settings' );
            }
        } catch (Exception e) {
            items = getErrorList( 'Error Occured', e.getMessage() );
        }
        for(Map<String, String> item: items){
            myValues.addRow( new VisualEditor.DataRow(item.get('subject'), item.get('htmlMessage')) );
        }
        return myValues;
    }
}