CLASS lhc_ZR_GRIR_EMAIL_DETAILS DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zr_grir_email_details RESULT result.

ENDCLASS.

CLASS lhc_ZR_GRIR_EMAIL_DETAILS IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
