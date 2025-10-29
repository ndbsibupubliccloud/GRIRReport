@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view of Email for GRIR Report'
@Metadata.allowExtensions: true
define root view entity ZR_GRIR_EMAIL_DETAILS
  as select from ZI_GRIR_Email_Details
{
  key Plant,
  key EmailId,
      UserName,
      UserId,    
      @Semantics.user.createdBy: true
      Createdby,
      @Semantics.systemDateTime.lastChangedAt: true
      Createdat,
      @Semantics.user.lastChangedBy: true
      Lastchangedby,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Lastchangedat

}
