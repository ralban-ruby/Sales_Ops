view: onboarding {
      derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.ONBOARDING_C WHERE IS_DELETED <> 1
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}."ID" ;;
    }

    dimension: OwnerId {
      label: "Owner Id"
      type: string
      sql: ${TABLE}."OWNER_ID" ;;
    }

    dimension: is_deleted {
      type: yesno
      sql: ${TABLE}."IS_DELETED" ;;
    }

    dimension: Name {
      label: "OB Name"
      type: string
      sql: ${TABLE}."NAME" ;;
    }

    dimension_group: week_1_usage_date {
      label: "Week 1 Usage Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: DATEADD(DAY,8,${Active_Status__c_date}) ;;
    }

    dimension_group: create_date_adjusted {
      label: "Adjusted Created Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: DATEADD(HOUR,-8,${created_date_time}) ;;
    }

    dimension: RecordTypeId {
      label: "Record Type"
      type: string
      sql: ${TABLE}."RECORD_TYPE_ID" ;;
    }

    dimension_group: created_date {
      type: time
      sql: ${TABLE}."CREATED_DATE" ;;
    }

    dimension: CreatedById {
      label: "Created By"
      type: string
      sql: ${TABLE}."CREATED_BY_ID" ;;
    }

    dimension_group: last_modified_date {
      type: time
      sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
    }

    dimension: LastModifiedById {
      label: "Last Modified By"
      type: string
      sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
    }

    dimension_group: system_modstamp {
      type: time
      sql: ${TABLE}."SYSTEM_MODSTAMP" ;;
    }

    dimension: last_activity_date {
      type: date
      sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
    }

    dimension_group: last_viewed_date {
      type: time
      sql: ${TABLE}."LAST_VIEWED_DATE" ;;
    }

    dimension_group: last_referenced_date {
      type: time
      sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
    }

    dimension: Account__c {
      label: "Account"
      type: string
      sql: ${TABLE}."ACCOUNT_C" ;;
    }

    dimension_group: Active_Status__c {
      label: "Active Status Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."ACTIVE_STATUS_C" ;;
    }

    dimension: Additional_Contacts__c {
      label: "Additional Contacts"
      type: string
      sql: ${TABLE}."ADDITIONAL_CONTACTS_C" ;;
    }

    dimension: After_Hours__c {
      label: "After Hours"
      type: string
      sql: ${TABLE}."AFTER_HOURS_C" ;;
    }

    dimension: Asked_about_HIPAA__c {
      label: "Asked about HIPAA"
      type: yesno
      sql: ${TABLE}."ASKED_ABOUT_HIPAA_C" ;;
    }

    dimension: Bilingual_Call_Routing__c {
      label: "Bilingual Call Routing"
      type: string
      sql: ${TABLE}."BILINGUAL_CALL_ROUTING_C" ;;
    }

    dimension: Business_Hours__c {
      label: "Business Hours"
      type: string
      sql: ${TABLE}."BUSINESS_HOURS_C" ;;
    }

    dimension: Call_Scheduled__c {
      label: "Call Scheduled"
      type: string
      sql: ${TABLE}."CALL_SCHEDULED_C" ;;
    }

    dimension: Collect_Calls__c {
      label: "Collect Calls"
      type: string
      sql: ${TABLE}."COLLECT_CALLS_C" ;;
    }

    dimension: Company_Description__c {
      label: "Company Description"
      type: string
      sql: ${TABLE}."COMPANY_DESCRIPTION_C" ;;
    }

    dimension: Greeting__c {
      label: "Company Greeting"
      type: string
      sql: ${TABLE}."COMPANY_GREETING_C" ;;
    }

    dimension: Company_Hours__c {
      label: "Company Hours"
      type: string
      sql: ${TABLE}."COMPANY_HOURS_C" ;;
    }

    dimension: company_phone_c {
      label: "Company Phone"
      type: string
      sql: ${TABLE}."COMPANY_PHONE_C" ;;
    }

    dimension: Default_Call_Handling__c {
      label: "Default Call Handling"
      type: string
      sql: ${TABLE}."DEFAULT_CALL_HANDLING_C" ;;
    }

    dimension: Did_We_Talk__c {
      label: "Did We Talk"
      type: string
      sql: ${TABLE}."DID_WE_TALK_C" ;;
    }

    dimension: Directory__c {
      label: "Directory"
      type: string
      sql: ${TABLE}."DIRECTORY_C" ;;
    }

    dimension_group: Followup_Date__c {
      label: "Followup Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype:date
      sql: ${TABLE}."FOLLOWUP_DATE_C" ;;
    }

    dimension: Forwarding_Phone_Company__c {
      label: "Forwarding Phone Company Notes"
      type: string
      sql: ${TABLE}."FORWARDING_PHONE_COMPANY_C" ;;
    }

    dimension: GH_Quote__c {
      label: "GH Quote"
      type: string
      sql: ${TABLE}."GH_QUOTE_C" ;;
    }

    dimension: Gather_Fields_Before_XFR__c {
      label: "Gather Fields (Before XFR)"
      type: string
      sql: ${TABLE}."GATHER_FIELDS_BEFORE_XFR_C" ;;
    }

    dimension: Grasshopper_Customer__c {
      label: "Grasshopper Customer"
      type: string
      sql: ${TABLE}."GRASSHOPPER_CUSTOMER_C" ;;
    }

    dimension: greeting_c {
      label: "Greeting"
      type: string
      sql: ${TABLE}."GREETING_C" ;;
    }

    dimension: How_Heard__c {
      label: "How Heard"
      type: string
      sql: ${TABLE}."HOW_HEARD_C" ;;
    }

    dimension: Individuals__c {
      label: "Individuals"
      type: string
      sql: ${TABLE}."INDIVIDUALS_C" ;;
    }

    dimension_group: Interview_Date__c {
      label: "Interview Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."INTERVIEW_DATE_C" ;;
    }

    dimension: Interviewed__c {
      label: "Interviewed"
      type: string
      sql: ${TABLE}."INTERVIEWED_C" ;;
    }

    dimension: Interviewer__c {
      label: "Interviewer"
      type: string
      sql: ${TABLE}."INTERVIEWER_C" ;;
    }

    dimension: Lead_Source__c {
      label: "Lead Source"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_C" ;;
    }

    dimension: Local_Number_Area_Code__c {
      label: "Local Number Area Code"
      type: string
      sql: ${TABLE}."LOCAL_NUMBER_AREA_CODE_C" ;;
    }

    dimension: Notes__c {
      label: "Onboarding Notes"
      type: string
      sql: ${TABLE}."NOTES_C" ;;
    }

    dimension: Number_of_Followups__c {
      label: "Number of Followups"
      type: string
      sql: ${TABLE}."NUMBER_OF_FOLLOWUPS_C" ;;
    }

    dimension: OK_to_Give_Address__c {
      label: "OK to Give Address?"
      type: yesno
      sql: ${TABLE}."OK_TO_GIVE_ADDRESS_C" ;;
    }

    dimension: OLSA__c {
      label: "OLSA"
      type: string
      sql: ${TABLE}."OLSA_C" ;;
    }

    dimension: Opportunity__c {
      label: "Opportunity"
      type: string
      sql: ${TABLE}."OPPORTUNITY_C" ;;
    }

    dimension: Pain_Point__c {
      label: "Pain Point"
      type: string
      sql: ${TABLE}."PAIN_POINT_C" ;;
    }

    dimension: PreProgrammer__c {
      label: "PreProgrammer"
      type: string
      sql: ${TABLE}."PRE_PROGRAMMER_C" ;;
    }

    dimension_group: PreProgramming_Date__c {
      label: "PreProgramming Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."PRE_PROGRAMMING_DATE_C" ;;
    }

    dimension: Preprogram__c {
      label: "Preprogram"
      type: string
      sql: ${TABLE}."PREPROGRAM_C" ;;
    }

    dimension: Programmer__c {
      label: "Programmer"
      type: string
      sql: ${TABLE}."PROGRAMMER_C" ;;
    }

    dimension_group: programming_complete_date_c {
      type: time
      sql: ${TABLE}."PROGRAMMING_COMPLETE_DATE_C" ;;
    }

    dimension_group: Programming_Date__c {
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."PROGRAMMING_DATE_C" ;;
    }

    dimension: Pronunciation__c {
      label: "Pronunciation"
      type: string
      sql: ${TABLE}."PRONUNCIATION_C" ;;
    }

    dimension: Public_Email__c {
      label: "Public Email"
      type: string
      sql: ${TABLE}."PUBLIC_EMAIL_C" ;;
    }

    dimension: Published_Number__c {
      label: "Published Number"
      type: string
      sql: ${TABLE}."PUBLISHED_NUMBER_C" ;;
    }

    dimension: Publishing_Ruby_Number__c {
      label: "Publishing Ruby Number"
      type: string
      sql: ${TABLE}."PUBLISHING_RUBY_NUMBER_C" ;;
    }

    dimension: Responsible_Party__c {
      label: "Responsible Party"
      type: string
      sql: ${TABLE}."RESPONSIBLE_PARTY_C" ;;
    }

    dimension: Scheduled_in_Calendly__c {
      label: "Scheduled in Calendly"
      type: yesno
      sql: ${TABLE}."SCHEDULED_IN_CALENDLY_C" ;;
    }

    dimension: Special_Outs_TOC_MSG_Gathers__c {
      label: "Special Outs/TOC MSG Gathers"
      type: string
      sql: ${TABLE}."SPECIAL_OUTS_TOC_MSG_GATHERS_C" ;;
    }

    dimension: Spoke_with_Customer__c {
      label: "Spoke with Customer"
      type: string
      sql: ${TABLE}."SPOKE_WITH_CUSTOMER_C" ;;
    }

    dimension: Status__c {
      label: "Status"
      type: string
      sql: ${TABLE}."STATUS_C" ;;
    }

    dimension: Suspect_Plan_Alignment_Problem__c {
      label: "Suspect_Plan_Alignment_Problem__c"
      type: yesno
      sql: ${TABLE}."SUSPECT_PLAN_ALIGNMENT_PROBLEM_C" ;;
    }

    dimension: TOD_Answering__c {
      label: "TOD Answering"
      type: string
      sql: ${TABLE}."TOD_ANSWERING_C" ;;
    }

    dimension: Time_Zone__c {
      label: "Time Zone"
      type: string
      sql: ${TABLE}."TIME_ZONE_C" ;;
    }

    dimension: Unique_Value_Proposition__c {
      label: "Unique Value Proposition"
      type: string
      sql: ${TABLE}."UNIQUE_VALUE_PROPOSITION_C" ;;
    }

    dimension: Verify_All__c {
      label: "Verify All"
      type: yesno
      sql: ${TABLE}."VERIFY_ALL_C" ;;
    }

    dimension: Waiting_On__c {
      label: "Waiting On"
      type: string
      sql: ${TABLE}."WAITING_ON_C" ;;
    }

    dimension: Website__c {
      label: "Website"
      type: string
      sql: ${TABLE}."WEBSITE_C" ;;
    }

    dimension: Welcome_Email_Sent__c {
      label: "Welcome Email Sent"
      type: string
      sql: ${TABLE}."WELCOME_EMAIL_SENT_C" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: Partnership_Percent__c {
      label: "Partnership - %Discount"
      type: string
      sql: ${TABLE}."PARTNERSHIP_PERCENT_C" ;;
    }

    dimension: Success_with_Ruby_CS__c {
      label: "Success with Ruby - CS"
      type: string
      sql: ${TABLE}."SUCCESS_WITH_RUBY_CS_C" ;;
    }

    dimension: Partnership_Dollars__c {
      label: "Partnership - $ Discount"
      type: string
      sql: ${TABLE}."PARTNERSHIP_DOLLARS_C" ;;
    }

    dimension: Success_with_Ruby_RS__c {
      label: "Success with Ruby - RS"
      type: string
      sql: ${TABLE}."SUCCESS_WITH_RUBY_RS_C" ;;
    }

    dimension_group: Customer_Activation_Date__c {
      label: "Customer Activation Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."CUSTOMER_ACTIVATION_DATE_C" ;;
    }

    dimension: Delayed_Deployment__c {
      label: "Delayed Deployment"
      type: yesno
      sql: ${TABLE}."DELAYED_DEPLOYMENT_C" ;;
    }

    dimension: Zombie__c {
      label: "Zombie"
      type: yesno
      sql: ${TABLE}."ZOMBIE_C" ;;
    }

    dimension_group: Delayed_Deployment_Start_Date__c {
      label: "Delayed Deployment(Start Date)"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."DELAYED_DEPLOYMENT_START_DATE_C" ;;
    }

    dimension: Zombie_Reason_Notes__c {
      label: "At Risk Notes"
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_NOTES_C" ;;
    }

    dimension: Delayed_Deployment_Reason__c {
      label: "Delayed Deployment(Reason)"
      type: string
      sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_C" ;;
    }

    dimension_group: Zombie_Start_Date__c {
      label: "Zombie(Start Date)"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."ZOMBIE_START_DATE_C" ;;
    }

    dimension: Delayed_Deployment_Reason_Notes__c    {
      label: "Delayed Deployment(Reason-Notes)"
      type: string
      sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_NOTES_C" ;;
    }

    dimension: Zombie_Reason__c {
      label: "Zombie(Reason)"
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_C" ;;
    }

    dimension_group: Zombie_End_Date__c {
      label: "Zombie(End Date)"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."ZOMBIE_END_DATE_C" ;;
    }

    dimension_group: Delayed_Deployment_New_Target_Date__c {
      label: "Delayed Deployment(New Target Date)"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."DELAYED_DEPLOYMENT_NEW_TARGET_DATE_C" ;;
    }

    dimension: Delayed_Deployment_Reason_Details__c {
      label: "Delayed Deployment(Reason-Details)"
      type: string
      sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_DETAILS_C" ;;
    }

    dimension: Zombie_Reason_Details__c {
      label: "Zombie(Reason-Details)"
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_DETAILS_C" ;;
    }

    dimension: Plan__c {
      label: "Plan"
      type: string
      sql: ${TABLE}."PLAN_C" ;;
    }

    dimension: Location_Notes__c {
      label: "Location Notes"
      type: string
      sql: ${TABLE}."LOCATION_NOTES_C" ;;
    }

    dimension: Billing_Notes__c {
      label: "Billing Notes"
      type: string
      sql: ${TABLE}."BILLING_NOTES_C" ;;
    }

    dimension_group: followup_date_time_c {
      label: "Followup Date/Time"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour,
        hour_of_day
      ]
      datatype: datetime
      sql: ${TABLE}."FOLLOWUP_DATE_TIME_C" ;;
    }

    dimension: Scheduled_Followup__c {
      label: "Scheduled Followup"
      type: yesno
      sql: ${TABLE}."SCHEDULED_FOLLOWUP_C" ;;
    }

    dimension_group: First_Zombie__c {
      label: "First Zombie"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."FIRST_ZOMBIE_C" ;;
    }

    dimension: past_72_hours_c {
      type: yesno
      sql: ${TABLE}."PAST_72_HOURS_C" ;;
    }

    dimension_group: Latest_Zombie__c {
      label: "Latest Zombie"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."LATEST_ZOMBIE_C" ;;
    }

    dimension: Zombie_Count__c {
      label: "Zombie Count"
      type: number
      sql: ${TABLE}."ZOMBIE_COUNT_C" ;;
    }

    dimension: Scheduling_Beta_Notes__c {
      label: "Scheduling Beta Notes"
      type: string
      sql: ${TABLE}."SCHEDULING_BETA_NOTES_C" ;;
    }

    dimension_group: Scheduling_Start_Date__c {
      label: "Scheduling Start Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."SCHEDULING_START_DATE_C" ;;
    }

    dimension: Scheduling_Status__c {
      label: "Scheduling Status"
      type: string
      sql: ${TABLE}."SCHEDULING_STATUS_C" ;;
    }

    dimension: Activation_DID__c {
      label: "DID 1"
      type: string
      sql: ${TABLE}."ACTIVATION_DID_C" ;;
    }

    dimension: DID_1_Name__c {
      label: "DID 1 Name"
      type: string
      sql: ${TABLE}."DID_1_NAME_C" ;;
    }

    dimension: DID_3_Name__c {
      label: "DID 3 Name"
      type: string
      sql: ${TABLE}."DID_3_NAME_C" ;;
    }

    dimension: DID_2_Name__c {
      label: "DID 2 Name"
      type: string
      sql: ${TABLE}."DID_2_NAME_C" ;;
    }

    dimension: DID_3__c {
      label: "DID 3"
      type: string
      sql: ${TABLE}."DID_3_C" ;;
    }

    dimension: DID_2__c {
      label: "DID 2"
      type: string
      sql: ${TABLE}."DID_2_C" ;;
    }

    dimension: DNP__c {
      label: "High Call Volume Announcement"
      type: string
      sql: ${TABLE}."DNP_C" ;;
    }

    dimension: Atypical_Setup_Type__c {
      label: "Atypical Setup Type"
      type: string
      sql: ${TABLE}."ATYPICAL_SETUP_TYPE_C" ;;
    }

    dimension: Atypical_Setup_Notes__c {
      label: "Atypical Setup Notes"
      type: string
      sql: ${TABLE}."ATYPICAL_SETUP_NOTES_C" ;;
    }

    dimension: Chat_Onboarding_Name__c {
      label: "Chat Onboarding Name"
      type: string
      sql: ${TABLE}."CHAT_ONBOARDING_NAME_C" ;;
    }

    dimension: Billing_Contact__c {
      label: "Billing Contact"
      type: string
      sql: ${TABLE}."BILLING_CONTACT_C" ;;
    }

    dimension: PCO_ID__c {
      label: "PCO ID"
      type: string
      sql: ${TABLE}."PCO_ID_C" ;;
    }

    dimension: Phone_Provider__c {
      label: "Phone Provider"
      type: string
      sql: ${TABLE}."PHONE_PROVIDER_C" ;;
    }

    dimension: Call_Connect_Hours__c {
      label: "Call Connect Hours"
      type: string
      sql: ${TABLE}."CALL_CONNECT_HOURS_C" ;;
    }

    dimension: Call_Connect_Number__c {
      label: "Call Connect Number"
      type: string
      sql: ${TABLE}."CALL_CONNECT_NUMBER_C" ;;
    }

    dimension: Confirmed_CC_is_not_answered_by_Ruby__c {
      label: "Confirmed CC # is not answered by Ruby?"
      type: string
      sql: ${TABLE}."CONFIRMED_CC_IS_NOT_ANSWERED_BY_RUBY_C" ;;
    }

    dimension: DID_7_Name__c {
      label: "DID 7 Name"
      type: string
      sql: ${TABLE}."DID_7_NAME_C" ;;
    }

    dimension: DID_4_Name__c {
      label: "DID 4 Name"
      type: string
      sql: ${TABLE}."DID_4_NAME_C" ;;
    }

    dimension: DID_9_Name__c {
      label: "DID 9 Name"
      type: string
      sql: ${TABLE}."DID_9_NAME_C" ;;
    }

    dimension: DID_5_Name__c {
      label: "DID 5 Name"
      type: string
      sql: ${TABLE}."DID_5_NAME_C" ;;
    }

    dimension: DID_10_Name__c {
      label: "DID 10 Name"
      type: string
      sql: ${TABLE}."DID_10_NAME_C" ;;
    }

    dimension: DID_6_Name__c {
      label: "DID 6 Name"
      type: string
      sql: ${TABLE}."DID_6_NAME_C" ;;
    }

    dimension: DID_8_Name__c {
      label: "DID 8 Name"
      type: string
      sql: ${TABLE}."DID_8_NAME_C" ;;
    }

    dimension: DID_5__c {
      label: "DID 5"
      type: string
      sql: ${TABLE}."DID_5_C" ;;
    }

    dimension: DID_4__c {
      label: "DID 4"
      type: string
      sql: ${TABLE}."DID_4_C" ;;
    }

    dimension: DID_7__c {
      label: "DID 7"
      type: string
      sql: ${TABLE}."DID_7_C" ;;
    }

    dimension: DID_6__c {
      label: "DID 6"
      type: string
      sql: ${TABLE}."DID_6_C" ;;
    }

    dimension: DID_9__c {
      label: "DID 9"
      type: string
      sql: ${TABLE}."DID_9_C" ;;
    }

    dimension: DID_8__c {
      label: "DID 8"
      type: string
      sql: ${TABLE}."DID_8_C" ;;
    }

    dimension: DID_10__c {
      label: "DID 10"
      type: string
      sql: ${TABLE}."DID_10_C" ;;
    }

    dimension: More_than_10_DID_Enter_in_PRL_Only__c {
      label: "More than 10 DID? - Enter in PRL Only"
      type: yesno
      sql: ${TABLE}."MORE_THAN_10_DID_ENTER_IN_PRL_ONLY_C" ;;
    }

    dimension: Discussed_red_floor__c {
      label: "Discussed red floor"
      type: yesno
      sql: ${TABLE}."DISCUSSED_RED_FLOOR_C" ;;
    }

    dimension: Red_Floor_Notes__c {
      label: "Red Floor Notes"
      type: string
      sql: ${TABLE}."RED_FLOOR_NOTES_C" ;;
    }

    dimension: Partner_Account__c {
      label: "Partner Account"
      type: string
      sql: ${TABLE}."PARTNER_ACCOUNT_C" ;;
    }

    dimension: Upcoming_Contact__c {
      label: "Upcoming Contact"
      type: string
      sql: ${TABLE}."UPCOMING_CONTACT_C" ;;
    }

    dimension: Has_Multiple_Accounts__c {
      label: "Has Multiple Accounts"
      type: yesno
      sql: ${TABLE}."HAS_MULTIPLE_ACCOUNTS_C" ;;
    }

    dimension: At_Risk_Reason_Detail__c {
      label: "At Risk Reason Detail"
      type: string
      sql: ${TABLE}."AT_RISK_REASON_DETAIL_C" ;;
    }

    dimension: At_Risk_Catergory__c {
      label: "At Risk Catergory"
      type: string
      sql: ${TABLE}."AT_RISK_CATERGORY_C" ;;
    }

    dimension_group: Onboardng_Completed_Date__c {
      label: "Onboarding Completed Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."ONBOARDNG_COMPLETED_DATE_C" ;;
    }

    dimension_group: At_Risk_Start_Date__c {
      label: "At Risk Start Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      datatype: date
      sql: ${TABLE}."AT_RISK_START_DATE_C" ;;
    }

    dimension: Assisted_with_Go_Live__c {
      label: "Assisted with Go-Live"
      type: string
      sql: ${TABLE}."ASSISTED_WITH_GO_LIVE_C" ;;
    }

    dimension: At_Risk_Reason__c {
      label: "At Risk Reason"
      type: string
      sql: ${TABLE}."AT_RISK_REASON_C" ;;
    }

    dimension: missed_interview_c {
      type: number
      sql: ${TABLE}."MISSED_INTERVIEW_C" ;;
    }

    dimension: missed_interview_task_sent_c {
      type: yesno
      sql: ${TABLE}."MISSED_INTERVIEW_TASK_SENT_C" ;;
    }

    dimension: How_forwarding__c {
      label: "How forwarding"
      type: string
      sql: ${TABLE}."HOW_FORWARDING_C" ;;
    }

    dimension: ASAP__c {
      label: "ASAP"
      type: yesno
      sql: ${TABLE}."ASAP_C" ;;
    }

    dimension: QC__c {
      label: "QC"
      type: yesno
      sql: ${TABLE}."QC_C" ;;
    }

    dimension: number_receiving_calls__c {
      label: "Number of People for Calls or Messages?"
      type: number
      sql: ${TABLE}."NUMBER_RECEIVING_CALLS_C" ;;
    }

    dimension: No_Website__c {
      label: "No Website"
      type: yesno
      sql: ${TABLE}."NO_WEBSITE_C" ;;
    }

    dimension: forward_port_publish__c {
      label: "How will you be setting up calls?"
      type: string
      sql: ${TABLE}."FORWARD_PORT_PUBLISH_C" ;;
    }

    dimension: HIPAA_Service__c {
      label: "HIPAA Service?"
      type: string
      sql: ${TABLE}."HIPAA_SERVICE_C" ;;
    }

    dimension: Business_Time_Zone__c {
      label: "Business Time Zone"
      type: string
      sql: ${TABLE}."BUSINESS_TIME_ZONE_C" ;;
    }

    dimension: What_does_the_PNC_s_company_do__c {
      label: "What does the PNC's company do?"
      type: string
      sql: ${TABLE}."WHAT_DOES_THE_PNC_S_COMPANY_DO_C" ;;
    }

    dimension: pnc_custom_solutions__c {
      label: "Custom Solutions"
      type: string
      sql: ${TABLE}."PNC_CUSTOM_SOLUTIONS_C" ;;
    }

    dimension: Preferred_Area_Code__c {
      label: "Preferred Area Code"
      type: string
      sql: ${TABLE}."PREFERRED_AREA_CODE_C" ;;
    }

    dimension: sales_TOD_answering__c {
      label: "Time of Day Answering"
      type: string
      sql: ${TABLE}."SALES_TOD_ANSWERING_C" ;;
    }

    dimension: ra_other_info__c {
      label: "Other Info?"
      type: string
      sql: ${TABLE}."RA_OTHER_INFO_C" ;;
    }

    dimension: Follow_Up_Owner__c {
      label: "Follow Up Owner"
      type: string
      sql: ${TABLE}."FOLLOW_UP_OWNER_C" ;;
    }

    dimension: Send_Back_To_Sales__c {
      label: "Send Back To Sales"
      type: yesno
      sql: ${TABLE}."SEND_BACK_TO_SALES_C" ;;
    }

    dimension: Ruby_Assessment__c {
      label: "Ruby Assessment"
      type: string
      sql: ${TABLE}."RUBY_ASSESSMENT_C" ;;
    }

    dimension: RP_Direct_Number__c {
      label: "RP Direct Number"
      type: string
      sql: ${TABLE}."RP_DIRECT_NUMBER_C" ;;
    }

    dimension: Most_Important_Business_Detail__c {
      label:"Most Important Business Detail"
      type: string
      sql: ${TABLE}."MOST_IMPORTANT_BUSINESS_DETAIL_C" ;;
    }

    dimension: Other_Stake_Holders__c {
      label: "Other Stake Holders"
      type: string
      sql: ${TABLE}."OTHER_STAKE_HOLDERS_C" ;;
    }

    dimension: Preferred_Communication__c {
      label: "Preferred Communication"
      type: string
      sql: ${TABLE}."PREFERRED_COMMUNICATION_C" ;;
    }

    dimension: Top_Challenge__c {
      label: "Top Challenge"
      type: string
      sql: ${TABLE}."TOP_CHALLENGE_C" ;;
    }

    dimension: FAQ__c {
      label: "FAQ"
      type: string
      sql: ${TABLE}."FAQ_C" ;;
    }

    dimension: Emergency_Protocol__c {
      label: "Emergency Protocol"
      type: string
      sql: ${TABLE}."EMERGENCY_PROTOCOL_C" ;;
    }

    dimension: Service_List__c {
      label: "Service List"
      type: string
      sql: ${TABLE}."SERVICE_LIST_C" ;;
    }

    dimension: Website_Provider__c {
      label: "Website Provider"
      type: string
      sql: ${TABLE}."WEBSITE_PROVIDER_C" ;;
    }

    dimension: Service_Area__c {
      label: "Service Area"
      type: string
      sql: ${TABLE}."SERVICE_AREA_C" ;;
    }

    dimension: Special_Instructions__c {
      label: "Special Instructions"
      type: string
      sql: ${TABLE}."SPECIAL_INSTRUCTIONS_C" ;;
    }

    dimension: web_developer_c {
      type: string
      sql: ${TABLE}."WEB_DEVELOPER_C" ;;
    }

    dimension: Special_Links__c {
      label: "Special Links"
      type: string
      sql: ${TABLE}."SPECIAL_LINKS_C" ;;
    }

    dimension: Transcripts_Leads_c {
      label: "Transcripts - Leads"
      type: string
      sql: ${TABLE}."TRANSCRIPTS_LEADS_C" ;;
    }

    dimension: Transcripts_Actionable_Non_Leads__c {
      label: "Transcripts - Actionable Non Leads"
      type: string
      sql: ${TABLE}."TRANSCRIPTS_ACTIONABLE_NON_LEADS_C" ;;
    }

    dimension: Web_Developer_Open_Text__c {
      label: "Web Developer"
      type: string
      sql: ${TABLE}."WEB_DEVELOPER_OPEN_TEXT_C" ;;
    }

    dimension: Installed__c {
      label: "Installed"
      type: yesno
      sql: ${TABLE}."INSTALLED_C" ;;
    }

    dimension: Integrations__c {
      label: "Integrations"
      type: string
      sql: ${TABLE}."INTEGRATIONS_C" ;;
    }

    dimension: Forwarded__c {
      label: "Forwarded"
      type: yesno
      sql: ${TABLE}."FORWARDED_C" ;;
    }

    dimension: Force_App_Notes__c {
      label: "Force/App Notes"
      type: string
      sql: ${TABLE}."FORCE_APP_NOTES_C" ;;
    }

    dimension: scheduling_url_v_2_c {
      type: string
      sql: ${TABLE}."SCHEDULING_URL_V_2_C" ;;
    }

    set: detail {
      fields: [
        id,
        OwnerId,
        is_deleted,
        Name,
        RecordTypeId,
        created_date_time,
        CreatedById,
        last_modified_date_time,
        LastModifiedById,
        system_modstamp_time,
        last_activity_date,
        last_viewed_date_time,
        last_referenced_date_time,
        Account__c,
        Active_Status__c_date,
        Additional_Contacts__c,
        After_Hours__c,
        Asked_about_HIPAA__c,
        Bilingual_Call_Routing__c,
        Business_Hours__c,
        Call_Scheduled__c,
        Collect_Calls__c,
        Company_Description__c,
        Greeting__c,
        Company_Hours__c,
        company_phone_c,
        Default_Call_Handling__c,
        Did_We_Talk__c,
        Directory__c,
        Followup_Date__c_date,
        Forwarding_Phone_Company__c,
        GH_Quote__c,
        Gather_Fields_Before_XFR__c,
        Grasshopper_Customer__c,
        greeting_c,
        How_Heard__c,
        Individuals__c,
        Interview_Date__c_date,
        Interviewed__c,
        Interviewer__c,
        Lead_Source__c,
        Local_Number_Area_Code__c,
        Notes__c,
        Number_of_Followups__c,
        OK_to_Give_Address__c,
        OLSA__c,
        Opportunity__c,
        Pain_Point__c,
        PreProgrammer__c,
        PreProgramming_Date__c_date,
        Preprogram__c,
        Programmer__c,
        programming_complete_date_c_time,
        Programming_Date__c_time,
        Pronunciation__c,
        Public_Email__c,
        Published_Number__c,
        Publishing_Ruby_Number__c,
        Responsible_Party__c,
        Scheduled_in_Calendly__c,
        Special_Outs_TOC_MSG_Gathers__c,
        Spoke_with_Customer__c,
        Status__c,
        Suspect_Plan_Alignment_Problem__c,
        TOD_Answering__c,
        Time_Zone__c,
        Unique_Value_Proposition__c,
        Verify_All__c,
        Waiting_On__c,
        Website__c,
        Welcome_Email_Sent__c,
        _fivetran_synced_time,
        Partnership_Percent__c,
        Success_with_Ruby_CS__c,
        Partnership_Dollars__c,
        Success_with_Ruby_RS__c,
        Customer_Activation_Date__c_date,
        Delayed_Deployment__c,
        Zombie__c,
        Delayed_Deployment_Start_Date__c_date,
        Zombie_Reason_Notes__c,
        Delayed_Deployment_Reason__c,
        Zombie_Start_Date__c_date,
        Delayed_Deployment_Reason_Notes__c,
        Zombie_Reason__c,
        Zombie_End_Date__c_date,
        Delayed_Deployment_New_Target_Date__c_date,
        Delayed_Deployment_Reason_Details__c,
        Zombie_Reason_Details__c,
        Plan__c,
        Location_Notes__c,
        Billing_Notes__c,
        followup_date_time_c_time,
        Scheduled_Followup__c,
        First_Zombie__c_time,
        past_72_hours_c,
        Latest_Zombie__c_time,
        Zombie_Count__c,
        Scheduling_Beta_Notes__c,
        Scheduling_Start_Date__c_time,
        Scheduling_Status__c,
        Activation_DID__c,
        DID_1_Name__c,
        DID_3_Name__c,
        DID_2_Name__c,
        DID_3__c,
        DID_2__c,
        DNP__c,
        Atypical_Setup_Type__c,
        Atypical_Setup_Notes__c,
        Chat_Onboarding_Name__c,
        Billing_Contact__c,
        PCO_ID__c,
        Phone_Provider__c,
        Call_Connect_Hours__c,
        Call_Connect_Number__c,
        Confirmed_CC_is_not_answered_by_Ruby__c,
        DID_7_Name__c,
        DID_4_Name__c,
        DID_9_Name__c,
        DID_5_Name__c,
        DID_10_Name__c,
        DID_6_Name__c,
        DID_8_Name__c,
        DID_5__c,
        DID_4__c,
        DID_7__c,
        DID_6__c,
        DID_9__c,
        DID_8__c,
        DID_10__c,
        More_than_10_DID_Enter_in_PRL_Only__c,
        Discussed_red_floor__c,
        Red_Floor_Notes__c,
        Partner_Account__c,
        Upcoming_Contact__c,
        Has_Multiple_Accounts__c,
        At_Risk_Reason_Detail__c,
        At_Risk_Catergory__c,
        Onboardng_Completed_Date__c_date,
        At_Risk_Start_Date__c_date,
        Assisted_with_Go_Live__c,
        At_Risk_Reason__c,
        missed_interview_c,
        missed_interview_task_sent_c,
        How_forwarding__c,
        ASAP__c,
        QC__c,
        number_receiving_calls__c,
        No_Website__c,
        forward_port_publish__c,
        HIPAA_Service__c,
        Business_Time_Zone__c,
        What_does_the_PNC_s_company_do__c,
        pnc_custom_solutions__c,
        Preferred_Area_Code__c,
        sales_TOD_answering__c,
        ra_other_info__c,
        Follow_Up_Owner__c,
        Send_Back_To_Sales__c,
        Ruby_Assessment__c,
        RP_Direct_Number__c,
        Most_Important_Business_Detail__c,
        Other_Stake_Holders__c,
        Preferred_Communication__c,
        Top_Challenge__c,
        FAQ__c,
        Emergency_Protocol__c,
        Service_List__c,
        Website_Provider__c,
        Service_Area__c,
        Special_Instructions__c,
        web_developer_c,
        Special_Links__c,
        Transcripts_Leads_c,
        Transcripts_Actionable_Non_Leads__c,
        Web_Developer_Open_Text__c,
        Installed__c,
        Integrations__c,
        Forwarded__c,
        Force_App_Notes__c,
        scheduling_url_v_2_c
      ]
    }
  }
