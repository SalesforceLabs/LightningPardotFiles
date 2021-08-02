
<html><head> </head><body><h1 id='eXUACANcD3i'>Lightning Pardot Files</h1>

<u><b><a href="https://youtu.be/rhIU3HAjQy4">Demo Video</a></b></u><br/>

<h2 id='eXUACA6WJ1e'>Installation and Setup Instructions</h2>

Install <b>Lightning Pardot Files</b> into your Pardot Enabled org<br/>

<a href="https://appexchange.salesforce.com/appxListingDetail?listingId=a0N4V00000GwHhwUAF">https://appexchange.salesforce.com/appxListingDetail?listingId=a0N4V00000GwHhwUAF</a><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/ckrkSCIhnp72P2suB9uRaQ?a=WvFbdexdcwX8g5oxACIFkWAtdn90l7sd8eLegioI69sa' id='eXUACAacWB6' width='800' height='584' alt="Screen Shot 2021-08-02 at 11.56.44.png"></img></div><br/>

<br/>

Navigate to <b>Setup → App Manager</b> and click <b>New Connected App</b> and fill it up just like below<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/ZLivy7nIUCrkz5FRPpuZ5A?a=0UX27VH9r8RlJNpDpuD6eajuKDFGhXWW5FHLrsJgB8Ya' id='eXUACAK0v98' width='800' height='711' alt="Screen Shot 2021-08-02 at 12.08.19.png"></img></div><br/>

<br/>

Take note of the <b>Consumer Key</b> and <b>Consumer Secret</b>. You will need this to grant access to the Component<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/1qIUAA-rkycA9UCpnJNv6A?a=kg7LhfqBUyKVyyNWaYd3akzBJ31NBtqmmqfUX5VC0ywa' id='eXUACAbuVbn' width='800' height='366' alt="Screen Shot 2021-08-02 at 12.14.48.png"></img></div><br/>

<br/>

Take also note of <b>Business Unit Id</b> by navigating <b>Setup → Pardot → Pardot Account Setup</b><br/>

<br/>

Next ready the Pardot User’s <b>Username</b> and <b>Password</b> to be used to connect to Pardot API. If the user is an Administrator, you can its password WITHOUT the Security Token<br/>

<br/>

If the user is an <b>Identity User</b>, login with that user first and reset the Security Token by Navigating to <b>My Profile → Personal → Reset My Security Token</b> and click <b>Reset Security Token</b> button. Copy the Security Token sent in the email.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/UsY5atEQWCkxXQw26jVKEQ?a=pkmRwYU54etJ053TS45MHKY8X2dv1GRC8vU1bWaAsnga' id='eXUACAsbUyw' width='800' height='492' alt="Screen Shot 2021-08-02 at 12.37.52.png"></img></div><br/>

<br/>

Create a setting to connect the Component to Pardot API to access Pardot Files. Navigate to <b>Setup → Custom Code → Custom Metadata Types</b> and click <b>Manage Records</b> of <b>Pardot Files Component Setting</b>. Check if there is a record. If there is a record, <b>Edit</b> it. If there is none click <b>New</b> to create one. <u><i>(only ONE record is needed)</i></u><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/G3HhJpXL4bdd5ukFVyzS3Q?a=xqDxyFXAFTFfrsVf0qN6sJoTpbIrt4hFKYHOo15hhKUa' id='eXUACAqaBDF' width='800' height='276' alt="Screen Shot 2021-08-02 at 12.51.49.png"></img></div><br/>

<br/>

Fill up all the fields. Mouse over to the <b>?</b> of every variable to get detailed instructions on how to obtain one. Paste the values you have copied earlier. Use the Password as is if the Pardot User is also the <b>Administrator</b>. If The user is an <b>Indentity User</b> fill up with the following format → <b>PASSWORD + SECURITY TOKEN</b>. Save and you are now ready to use the Lightning Component.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/1CpvBYN6LgkyTMrXBIaLvA?a=Zn7jaZxQ4doxdxCnlhFx1cmkcf5vcgiDtOVP71n2awga' id='eXUACA89ezx' width='800' height='454' alt="Screen Shot 2021-08-02 at 12.55.41.png"></img></div><br/>

<br/>

<br/>

<br/>

<br/>

<h2 id='eXUACAScsGo'>Which Files are accessible?</h2>

<b>Lightning Pardot Files</b> will enable you to use all your pre-uploaded content files into the new <b>Email Builder</b> as per the Pilot Release only supports are <b>Salesforce CMS Contents</b><br/>

<br/>

All the <b>Files</b> under <b>Pardot → Content → Files</b> can now be added to the new <b>Email Builder</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/BwTpMSFZnhbBotWaJIlBAQ?a=IRuaAaPv15a0FsaZ3yVqTleL74I3e3xN1DmFqN8IAD4a' id='eXUACAARMIk' width='800' height='475' alt="Screen Shot 2021-08-02 at 13.05.58.png"></img></div><br/>

<br/>

<br/>

<br/>

<br/>

<h2 id='eXUACAvaPfs'>Using the Lightning Component</h2>

Navigate to <b>Pardot → Email Content</b>. Click <b>New</b><i><u> (Make sure that the current user have a permission to Email Contents)</u></i><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/KhWAoR-7UBpukBVKncW1Zw?a=z9kTxmxDaok2gmILeXKelQk6qDnClKUjfpfiyafTT1ka' id='eXUACAA0dSa' width='800' height='301' alt="Screen Shot 2021-08-02 at 13.27.22.png"></img></div><br/>

Fill up the form and <b>Save</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/oDOwQehMb4uQxBKhmcHW2w?a=eNkrHNuZ1gIAi7OxhNDq7zaQIU5bOpyesH2VYUV9GFUa' id='eXUACAGo4GH' width='800' height='582' alt="Screen Shot 2021-08-02 at 13.35.27.png"></img></div><br/>

Then click the <b>▼</b> and select <b>Edit in Builder</b><br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/r4Mg0rc8lqyUImQrP3PjfA?a=sNAS1tmjKTT3BO7TwEhh2uh5qqtkD7k8NaaWZtRDX9ka' id='eXUACAYM0OE' width='800' height='383' alt="Screen Shot 2021-08-02 at 13.36.36.png"></img></div><br/>

The new <b>Email Builder</b> will display. Drag <b>Lightning Pardot Files</b> Custom - Managed Component to the Canvas<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/VuCJvaNycWKgCWYHItWsNA?a=LVrbUu1ubE048aaQB5kRq6lrtlBCkaG1cGeg7qrZjI4a' id='eXUACAI0XgZ' width='800' height='383' alt="Screen Shot 2021-08-02 at 13.38.32.png"></img></div><br/>

Select the <b>Pardot File</b> you want to add from the dropdown<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/wot49Wotavz5LfuSv1PxUg?a=jYyYwVIj7DaXFJ2PY8JMm5uBQ3svJN3SHaWQtd74dgca' id='eXUACAhfFkF' width='800' height='383' alt="Screen Shot 2021-08-02 at 13.43.59.png"></img></div><br/>

<br/>

If the following error shows.. the connected app may still not be ready.. on this case please wait up to 10 minutes until the connected app is ready. Double check the custom metadata settings and make sure no whitespace, new line or the password is correct.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/CTY41-xe4KpdUPUfT-9h-A?a=qZcQiDhoT444aTdsEojY2bmaDPDJ90JpHN2TB4vnvfIa' id='eXUACAUNimN' alt="Screen Shot 2021-08-02 at 15.48.59.png"></img></div><br/>

<br/>

<br/>

Images will be previewed directly to the email<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/RWWk5zwaIRoAJUgFl01brg?a=67hg4zI768u8NaIvROkWDwEt0PGc0QajMa8a4cAQih8a' id='eXUACAvmZIV' width='800' height='369' alt="Screen Shot 2021-08-02 at 13.45.01.png"></img></div>While PDF’s, Documents and non-image files will be displayed as a download link<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/NTNGpHv7Mzg4rtoqhRod9A?a=WXxaAEzA78qFaparRiy78U3vJzozqURyrXiM1pKGvI0a' id='eXUACAcncy0' width='800' height='369' alt="Screen Shot 2021-08-02 at 13.46.50.png"></img></div>You can also display multiple Pardot File images in a single row like this. Please note that the <i><u>images are not scalable and will display 100% of the size</u></i> so please keep in mind the resulting layout of your email. <b>Save</b> the template.<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/3b-2zOOKwUePTO1um05ddg?a=BNauheVVBnB3qw1kY1C60I6lCPtBGsWQGztaMv6Ynu4a' id='eXUACAEqddR' width='800' height='436' alt="Screen Shot 2021-08-02 at 13.52.07.png"></img></div><br/>

The resulting email would look like this!<br/>

<div data-section-style='11' style='max-width:100%' class=''><img src='https://quip.com/blob/eXUAAAfSOOS/7acrIkAPR-Kk_B6aOZIVkw?a=4ktAp99dBULAdvkhiULv7U4Y9OtdvlTipws43y5aPega' id='eXUACA6ld1C' width='800' height='466' alt="Screen Shot 2021-08-02 at 13.56.42.png"></img></div><br/>

<br/>

<br/>

<br/>

<br/>

<h2 id='eXUACAENLG4'><b>Congratulations!</b> </h2>

You have tried adding <b>Pardot Files</b> to your Email using the new <b>Email Builder</b>!<br/>

</body></html>
