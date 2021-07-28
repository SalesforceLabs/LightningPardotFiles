@isTest
private class PardotFilesPicklistControllerTest {

    @isTest static void testGetPardotFiles() {
        // Create the mock response based on a static resource
        MultiStaticResourceCalloutMock multimock = new MultiStaticResourceCalloutMock();
        multimock.setStaticResource('https://login.salesforce.com/services/oauth2/token','PardotFilesAccessToken');
        multimock.setStaticResource('https://pi.demo.pardot.com/api/v5/objects/files?fields=id,name,url,createdBy.id,createdBy.username','PardotFilesListError');
        multimock.setStatusCode(200);
        multimock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, multimock);

        PardotFilesPicklistController test1 = new PardotFilesPicklistController();
        test1.getValues();
        test1.getDefaultValue();
    }
    @isTest static void testGetPardotFilesError() {
        // Create the mock response based on a static resource
        MultiStaticResourceCalloutMock multimock = new MultiStaticResourceCalloutMock();
        multimock.setStaticResource('https://login.salesforce.com/services/oauth2/token','PardotFilesAccessToken');
        multimock.setStaticResource('https://pi.demo.pardot.com/api','PardotFilesListError');
        multimock.setStatusCode(403);
        multimock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, multimock);

        PardotFilesPicklistController test1 = new PardotFilesPicklistController();
        test1.getValues();
        test1.getDefaultValue();
    }

}