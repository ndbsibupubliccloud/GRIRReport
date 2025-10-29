CLASS lhc_ZR_GRIR_REPORT DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zr_grir_report RESULT result.

ENDCLASS.

CLASS lhc_ZR_GRIR_REPORT IMPLEMENTATION.

  METHOD get_instance_authorizations.

    READ ENTITIES OF zr_grir_report IN LOCAL MODE
    ENTITY zr_grir_report
    FROM CORRESPONDING #( keys )
    RESULT DATA(lt_data).

  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZR_GRIR_REPORT DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZR_GRIR_REPORT IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
