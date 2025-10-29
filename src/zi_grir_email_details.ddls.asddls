@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of Email for GRIR Report'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GRIR_Email_Details
  as select from zmm_mail_tab
{
  key plant         as Plant,
  key email_id      as EmailId,
      user_name     as UserName,
      user_id       as UserId,
      @Semantics.user.createdBy: true
      createdby     as Createdby,
      @Semantics.systemDateTime.lastChangedAt: true
      createdat     as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby as Lastchangedby,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchangedat as Lastchangedat
}
