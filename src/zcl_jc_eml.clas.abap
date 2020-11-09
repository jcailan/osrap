CLASS zcl_jc_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jc_eml IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA my_data TYPE STANDARD TABLE OF zc_jc_travel.

    my_data = VALUE #( ( TravelUUID ='65BA01109A8F8B5717000902DE80A205' TravelID ='00000002' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000608' CustomerName ='Prinz' BeginDate ='20200815' EndDate ='20200815' BookingFee ='20.00 '
TotalPrice ='900.00 ' CurrencyCode ='USD' Description ='Business Trip for Christine, Pierre' TravelStatus ='O' CreatedBy ='Meier' CreatedAt ='20200729205413.0000000 ' LastChangedBy ='Lindwurm' LastChangedAt ='20200731210758.0000000 ' LocalLastChangedAt =
'20200731210758.0000000 '  )
                        ( TravelUUID ='68BA01109A8F8B5717000902DE80A205' TravelID ='00000005' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000225' CustomerName ='Mechler' BeginDate ='20200815' EndDate ='20200815' BookingFee ='20.00 '
TotalPrice ='992.00 ' CurrencyCode ='USD' Description ='Business Trip for Kurt, Ida' TravelStatus ='O' CreatedBy ='Sessler' CreatedAt ='20200728075758.0000000 ' LastChangedBy ='Heller' LastChangedAt ='20200730155759.0000000 ' LocalLastChangedAt =
'20200730155759.0000000 '  )
                        ( TravelUUID ='ADBA01109A8F8B5717000902DE80A205' TravelID ='00000074' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000209' CustomerName ='Waldmann' BeginDate ='20200817' EndDate ='20200817' BookingFee ='30.00 '
TotalPrice ='2604.00 ' CurrencyCode ='USD' Description ='Business Trip for August, Anna, Holm' TravelStatus ='O' CreatedBy ='Dumbach' CreatedAt ='20200722000715.0000000 ' LastChangedBy ='Buchholm' LastChangedAt ='20200724051402.0000000 '
LocalLastChangedAt ='20200724051402.0000000 '  )
                        ( TravelUUID ='B5BA01109A8F8B5717000902DE80A205' TravelID ='00000082' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000113' CustomerName ='Benz' BeginDate ='20200817' EndDate ='20200817' BookingFee ='30.00 '
TotalPrice ='3274.00 ' CurrencyCode ='USD' Description ='Business Trip for Allen, Roland, Ulla' TravelStatus ='O' CreatedBy ='Lindwurm' CreatedAt ='20200718192429.0000000 ' LastChangedBy ='Prinz' LastChangedAt ='20200720191416.0000000 '
LocalLastChangedAt ='20200720191416.0000000 '  )
                        ( TravelUUID ='EABA01109A8F8B5717000902DE80A205' TravelID ='00000135' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000600' CustomerName ='Ryan' BeginDate ='20200811' EndDate ='20200811' BookingFee ='20.00 '
TotalPrice ='3678.00 ' CurrencyCode ='EUR' Description ='Business Trip for Astrid, Anna' TravelStatus ='O' CreatedBy ='Benz' CreatedAt ='20200720064313.0000000 ' LastChangedBy ='Mechler' LastChangedAt ='20200722030850.0000000 ' LocalLastChangedAt =
'20200722030850.0000000 '  )
                        ( TravelUUID ='22BB01109A8F8B5717000902DE80A205' TravelID ='00000191' AgencyID ='070007' AgencyName ='Hot Socks Travel' CustomerID ='000394' CustomerName ='Kramer' BeginDate ='20200813' EndDate ='20200813' BookingFee ='30.00 '
TotalPrice ='14256.00 ' CurrencyCode ='SGD' Description ='Business Trip for James, Harish, Stephen' TravelStatus ='O' CreatedBy ='Leisert' CreatedAt ='20200729111704.0000000 ' LastChangedBy ='Trensch' LastChangedAt ='20200731221539.0000000 '
LocalLastChangedAt ='20200731221539.0000000 '  )
                        ).

*    " Step 1: READ
*    READ ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        FROM VALUE #( ( TravelUUID = '64BA01109A8F8B5717000902DE80A205' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " Step 2: READ with Fields
*    READ ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUUID = '64BA01109A8F8B5717000902DE80A205' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " Step 3: READ with All Fields
*    READ ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '64BA01109A8F8B5717000902DE80A205' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " Step 4: READ by Association
*    READ ENTITIES OF ZI_JC_Travel
*      ENTITY Travel by \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '64BA01109A8F8B5717000902DE80A205' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

*    " Step 5: Unsuccessful READ
*    READ ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*      RESULT DATA(travels)
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).   " complex structures not supported by the console output
*    out->write( reported ). " complex structures not supported by the console output

*    " Step 6: MODIFY Update
*    MODIFY ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        UPDATE
*          SET FIELDS WITH VALUE
*            #( ( TravelUUID = '64BA01109A8F8B5717000902DE80A205'
*                 Description = 'I like RAP@openSAP' ) )
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( 'Update done' ).
*
*    " Step 6b: Commit Entities
*    COMMIT ENTITIES
*      RESPONSE OF ZI_JC_Travel
*      FAILED DATA(failed_commit)
*      REPORTED DATA(reported_commit).

*    " Step 7: MODIFY Create
*    MODIFY ENTITIES OF ZI_JC_Travel
*      ENTITY Travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*      MAPPED data(mapped)
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_JC_Travel
*      FAILED DATA(failed_commit)
*      REPORTED DATA(reported_commit).
*
*    out->write( 'Create done' ).

    " Step 8: MODIFY Delete
    MODIFY ENTITIES OF ZI_JC_Travel
      ENTITY Travel
        DELETE FROM
          VALUE
            #( ( TravelUUID = '021174B14B6A1EEB889CF76D8ED952A4' ) )
      FAILED DATA(failed)
      REPORTED DATA(reported).

    COMMIT ENTITIES
      RESPONSE OF ZI_JC_Travel
      FAILED DATA(failed_commit)
      REPORTED DATA(reported_commit).

    out->write( 'Delete done' ).






  ENDMETHOD.

ENDCLASS.
