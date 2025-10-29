@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view of Email for GRIR Rep'
@Metadata.allowExtensions: true
define root view entity ZC_GRIR_Email_Details
  provider contract transactional_query
  as projection on ZR_GRIR_EMAIL_DETAILS
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
