view: lead {
    derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.LEAD WHERE IS_DELETED <> 1
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension_group: adjusted_cor_date {
      label: "Adjusted CoR Date"
      type: time
      convert_tz: no
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
      sql: CASE WHEN ${CoR_Date__c_date} != NULL THEN ${CoR_Date__c_date} ELSE ${created_date_date} END ;;
    }

    measure: original_cohort_date_measure{
      type: min
      sql: ${adjusted_cor_date_date} ;;
    }

    dimension: id {
      type: string
      sql: ${TABLE}."ID" ;;
    }

    dimension: is_deleted {
      type: yesno
      sql: ${TABLE}."IS_DELETED" ;;
    }

    dimension: master_record_id {
      type: string
      sql: ${TABLE}."MASTER_RECORD_ID" ;;
    }

    dimension: last_name {
      type: string
      sql: ${TABLE}."LAST_NAME" ;;
    }

    dimension: first_name {
      type: string
      sql: ${TABLE}."FIRST_NAME" ;;
    }

    dimension: salutation {
      type: string
      sql: ${TABLE}."SALUTATION" ;;
    }

    dimension: middle_name {
      type: string
      sql: ${TABLE}."MIDDLE_NAME" ;;
    }

    dimension: Name {
      label: "Name"
      type: string
      sql: ${TABLE}."NAME" ;;
    }

    dimension: RecordTypeId {
      label: "RecordTypeId"
      type: string
      sql: ${TABLE}."RECORD_TYPE_ID" ;;
    }

    dimension: title {
      type: string
      sql: ${TABLE}."TITLE" ;;
    }

    dimension: Company {
      label: "Company"
      type: string
      sql: ${TABLE}."COMPANY" ;;
    }

    dimension: street {
      type: string
      sql: ${TABLE}."STREET" ;;
    }

    dimension: city {
      type: string
      sql: ${TABLE}."CITY" ;;
    }

    dimension: state {
      type: string
      sql: ${TABLE}."STATE" ;;
    }

    dimension: postal_code {
      type: string
      sql: ${TABLE}."POSTAL_CODE" ;;
    }

    dimension: country {
      type: string
      sql: ${TABLE}."COUNTRY" ;;
    }

    dimension: latitude {
      type: number
      sql: ${TABLE}."LATITUDE" ;;
    }

    dimension: longitude {
      type: number
      sql: ${TABLE}."LONGITUDE" ;;
    }

    dimension: geocode_accuracy {
      type: string
      sql: ${TABLE}."GEOCODE_ACCURACY" ;;
    }

    dimension: phone {
      type: string
      sql: ${TABLE}."PHONE" ;;
    }

    dimension: MobilePhone {
      label: "Additional Phone"
      type: string
      sql: ${TABLE}."MOBILE_PHONE" ;;
    }

    dimension: Email {
      label: "Email"
      type: string
      sql: ${TABLE}."EMAIL" ;;
    }

    dimension: website {
      type: string
      sql: ${TABLE}."WEBSITE" ;;
    }

    dimension: photo_url {
      type: string
      sql: ${TABLE}."PHOTO_URL" ;;
    }

    dimension: LeadSource {
      label: "Lead Source"
      type: string
      sql: ${TABLE}."LEAD_SOURCE" ;;
    }

    dimension: Status {
      label: "Lead Status"
      type: string
      sql: ${TABLE}."STATUS" ;;
    }

    dimension: Industry {
      label: "Industry"
      type: string
      sql: ${TABLE}."INDUSTRY" ;;
    }

    dimension: NumberOfEmployees {
      label: "Number of Users"
      type: number
      sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
    }

    dimension: OwnerId {
      label: "Lead Owner"
      type: string
      sql: ${TABLE}."OWNER_ID" ;;
    }

    dimension: is_converted {
      type: yesno
      sql: ${TABLE}."IS_CONVERTED" ;;
    }

    dimension: converted_date {
      type: date
      sql: ${TABLE}."CONVERTED_DATE" ;;
    }

    dimension: converted_account_id {
      type: string
      sql: ${TABLE}."CONVERTED_ACCOUNT_ID" ;;
    }

    dimension: converted_contact_id {
      type: string
      sql: ${TABLE}."CONVERTED_CONTACT_ID" ;;
    }

    dimension: converted_opportunity_id {
      type: string
      sql: ${TABLE}."CONVERTED_OPPORTUNITY_ID" ;;
    }

    dimension: is_unread_by_owner {
      type: yesno
      sql: ${TABLE}."IS_UNREAD_BY_OWNER" ;;
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

    dimension: HasOptedOutOfFax {
      label: "Fax Opt Out"
      type: yesno
      sql: ${TABLE}."HAS_OPTED_OUT_OF_FAX" ;;
    }

    dimension_group: last_viewed_date {
      type: time
      sql: ${TABLE}."LAST_VIEWED_DATE" ;;
    }

    dimension_group: last_referenced_date {
      type: time
      sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
    }

    dimension: jigsaw_contact_id {
      type: string
      sql: ${TABLE}."JIGSAW_CONTACT_ID" ;;
    }

    dimension: email_bounced_reason {
      type: string
      sql: ${TABLE}."EMAIL_BOUNCED_REASON" ;;
    }

    dimension_group: email_bounced_date {
      type: time
      sql: ${TABLE}."EMAIL_BOUNCED_DATE" ;;
    }

    dimension: Status__c {
      label: "Kickstarter Status"
      type: string
      sql: ${TABLE}."STATUS_C" ;;
    }

    dimension: referring_name_c {
      type: string
      sql: ${TABLE}."REFERRING_NAME_C" ;;
    }

    dimension: referring_email_c {
      type: string
      sql: ${TABLE}."REFERRING_EMAIL_C" ;;
    }

    dimension: KS_Sharepoint_Modified_By__c {
      label: "KS Sharepoint Modified By"
      type: string
      sql: ${TABLE}."KS_SHAREPOINT_MODIFIED_BY_C" ;;
    }

    dimension: web_form_comments_c {
      type: string
      sql: ${TABLE}."WEB_FORM_COMMENTS_C" ;;
    }

    dimension: PC_Account_Executive__c {
      label: "Account Executive"
      type: string
      sql: ${TABLE}."PC_ACCOUNT_EXECUTIVE_C" ;;
    }

    dimension: PC_Chat_Brand__c {
      label: "Chat Brand"
      type: string
      sql: ${TABLE}."PC_CHAT_BRAND_C" ;;
    }

    dimension_group: original_close_date_c {
      type: time
      sql: ${TABLE}."ORIGINAL_CLOSE_DATE_C" ;;
    }

    dimension: Also_Involved__c {
      label: "Also Involved"
      type: string
      sql: ${TABLE}."ALSO_INVOLVED_C" ;;
    }

    dimension: product_type_c {
      type: string
      sql: ${TABLE}."PRODUCT_TYPE_C" ;;
    }

    dimension: Lead_Source_for_Mapping__c {
      label: "Lead Source for Mapping"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_FOR_MAPPING_C" ;;
    }

    dimension: Employee_Contact_Info__c {
      label: "Employee Contact Info"
      type: string
      sql: ${TABLE}."EMPLOYEE_CONTACT_INFO_C" ;;
    }

    dimension: PC_2nd_Email__c {
      label: "2nd Email"
      type: string
      sql: ${TABLE}."PC_2_ND_EMAIL_C" ;;
    }

    dimension: partnership_c {
      type: string
      sql: ${TABLE}."PARTNERSHIP_C" ;;
    }

    dimension: PC_Actual_Sales_Volume__c {
      label: "Actual Sales Volume"
      type: string
      sql: ${TABLE}."PC_ACTUAL_SALES_VOLUME_C" ;;
    }

    dimension: PC_Affiliate_2__c {
      label: "Affiliate - 2"
      type: string
      sql: ${TABLE}."PC_AFFILIATE_2_C" ;;
    }

    dimension: PC_Affiliate__c {
      label: "Affiliate"
      type: string
      sql: ${TABLE}."PC_AFFILIATE_C" ;;
    }

    dimension: PC_Annual_Revenue__c {
      label: "PC Annual Revenue"
      type: string
      sql: ${TABLE}."PC_ANNUAL_REVENUE_C" ;;
    }

    dimension: time_zone_c {
      type: string
      sql: ${TABLE}."TIME_ZONE_C" ;;
    }

    dimension: PC_Contact_2__c {
      label: "Contact - 2"
      type: string
      sql: ${TABLE}."PC_CONTACT_2_C" ;;
    }

    dimension: PC_Docs__c {
      label: "# Docs"
      type: string
      sql: ${TABLE}."PC_DOCS_C" ;;
    }

    dimension: verify_all_c {
      type: yesno
      sql: ${TABLE}."VERIFY_ALL_C" ;;
    }

    dimension: Discount__c {
      label: "Discount"
      type: string
      sql: ${TABLE}."DISCOUNT_C" ;;
    }

    dimension: PC_Lead_ExID__c {
      label: "Lead ExID"
      type: string
      sql: ${TABLE}."PC_LEAD_EX_ID_C" ;;
    }

    dimension: PC_Lead_Number__c {
      label: "Lead Number"
      type: string
      sql: ${TABLE}."PC_LEAD_NUMBER_C" ;;
    }

    dimension: PC_Member_ID__c {
      label: "Member ID"
      type: number
      sql: ${TABLE}."PC_MEMBER_ID_C" ;;
    }

    dimension: public_address_c {
      type: string
      sql: ${TABLE}."PUBLIC_ADDRESS_C" ;;
    }

    dimension: PC_Metro_Area__c {
      label: "Metro Area"
      type: string
      sql: ${TABLE}."PC_METRO_AREA_C" ;;
    }

    dimension: PC_Offices__c {
      label: "# Offices"
      type: string
      sql: ${TABLE}."PC_OFFICES_C" ;;
    }

    dimension: pc_primary_sic_description_c {
      type: string
      sql: ${TABLE}."PC_PRIMARY_SIC_DESCRIPTION_C" ;;
    }

    dimension: Kickstarter__c {
      label: "Kickstarter"
      type: string
      sql: ${TABLE}."KICKSTARTER_C" ;;
    }

    dimension: sales_sharepoint_special_pricing_c {
      type: string
      sql: ${TABLE}."SALES_SHAREPOINT_SPECIAL_PRICING_C" ;;
    }

    dimension: Customer_Loyalty_Checkbox__c {
      label: "Customer Loyalty Checkbox"
      type: yesno
      sql: ${TABLE}."CUSTOMER_LOYALTY_CHECKBOX_C" ;;
    }

    dimension: Lead_Source_Formula__c {
      label: "Lead Source Formula"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_FORMULA_C" ;;
    }

    dimension: pc_sdr_name_c {
      type: string
      sql: ${TABLE}."PC_SDR_NAME_C" ;;
    }

    dimension: pc_trade_show_details_c {
      type: string
      sql: ${TABLE}."PC_TRADE_SHOW_DETAILS_C" ;;
    }

    dimension: Billing_Usage_Upgrades_Downgrades__c {
      label: "Billing: Usage/Upgrades/Downgrades"
      type: yesno
      sql: ${TABLE}."BILLING_USAGE_UPGRADES_DOWNGRADES_C" ;;
    }

    dimension: MS_Apps__c {
      label: "MS/Apps"
      type: yesno
      sql: ${TABLE}."MS_APPS_C" ;;
    }

    dimension: Close_Date_Checkbox__c {
      label: "Close Date Checkbox"
      type: yesno
      sql: ${TABLE}."CLOSE_DATE_CHECKBOX_C" ;;
    }

    dimension_group: Close_Date__c {
      label: "Close Date"
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
      sql: ${TABLE}."CLOSE_DATE_C" ;;
    }

    dimension: zombie_reason_c {
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_C" ;;
    }

    dimension: Initial_Contact__c {
      label: "Initial Contact"
      type: string
      sql: ${TABLE}."INITIAL_CONTACT_C" ;;
    }

    dimension: Additional_People__c {
      label: "Additional People"
      type: string
      sql: ${TABLE}."ADDITIONAL_PEOPLE_C" ;;
    }

    dimension: Call_Handling_Directory__c {
      label: "Call Handling Directory"
      type: string
      sql: ${TABLE}."CALL_HANDLING_DIRECTORY_C" ;;
    }

    dimension: Call_Handling_Individuals__c {
      label: "Call Handling: Individuals"
      type: string
      sql: ${TABLE}."CALL_HANDLING_INDIVIDUALS_C" ;;
    }

    dimension: original_ks_create_date_c {
      type: date
      sql: ${TABLE}."ORIGINAL_KS_CREATE_DATE_C" ;;
    }

    dimension: original_ks_rep_c {
      type: string
      sql: ${TABLE}."ORIGINAL_KS_REP_C" ;;
    }

    dimension_group: PRL_Activation_Date__c {
      label: "Customer Activation Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        ]
      datatype: date
      sql: ${TABLE}."PRL_ACTIVATION_DATE_C" ;;
    }

    dimension: Do_Not_Mail__c {
      label: "Do Not Mail"
      type: yesno
      sql: ${TABLE}."DO_NOT_MAIL_C" ;;
    }

    dimension: Alternate_Phone__c {
      label: "Alternate Phone"
      type: string
      sql: ${TABLE}."ALTERNATE_PHONE_C" ;;
    }

    dimension: Free_Chat_Trial__c {
      label: "Free Chat Trial?"
      type: yesno
      sql: ${TABLE}."FREE_CHAT_TRIAL_C" ;;
    }

    dimension: KS_Sharepoint_ID__c {
      label: "KS Sharepoint ID"
      type: string
      sql: ${TABLE}."KS_SHAREPOINT_ID_C" ;;
    }

    dimension: returning_client_c {
      type: yesno
      sql: ${TABLE}."RETURNING_CLIENT_C" ;;
    }

    dimension: Do_Not_Email__c {
      label: "Do Not Email - Marketing"
      type: yesno
      sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
    }

    dimension_group: olsa_started_c {
      type: time
      sql: ${TABLE}."OLSA_STARTED_C" ;;
    }

    dimension: wait_to_charge_c {
      type: yesno
      sql: ${TABLE}."WAIT_TO_CHARGE_C" ;;
    }

    dimension: special_pricing_deals_c {
      type: string
      sql: ${TABLE}."SPECIAL_PRICING_DEALS_C" ;;
    }

    dimension: LeadSourceDetail__c {
      label: "Lead Source Detail"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_C" ;;
    }

    dimension: prl_id_c {
      type: string
      sql: ${TABLE}."PRL_ID_C" ;;
    }

    dimension_group: Kickstarter_due_date__c {
      label: "Kickstarter due date"
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
      sql: ${TABLE}."KICKSTARTER_DUE_DATE_C" ;;
    }

    dimension: Did_you_search_Salesforce__c {
      label: "Did you search Salesforce?"
      type: yesno
      sql: ${TABLE}."DID_YOU_SEARCH_SALESFORCE_C" ;;
    }

    dimension: KS_to_Sales_Notes__c {
      label: "KS to Sales Notes"
      type: string
      sql: ${TABLE}."KS_TO_SALES_NOTES_C" ;;
    }

    dimension: Lead_Source_Detail_from_Lead_Pages__c {
      label: "Lead Source Detail from Lead Pages"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_FROM_LEAD_PAGES_C" ;;
    }

    dimension: Engagement_Date__c {
      label: "Engagement Date"
      type: date
      sql: ${TABLE}."ENGAGEMENT_DATE_C" ;;
    }

    dimension_group: mkto71_Acquisition_Date__c {
      label: "Acquisition Date"
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
      sql: ${TABLE}."MKTO_71_ACQUISITION_DATE_C" ;;
    }

    dimension: pc_lead_id_c {
      type: string
      sql: ${TABLE}."PC_LEAD_ID_C" ;;
    }

    dimension: Budget_DNU__c {
      label: "Budget DNU"
      type: string
      sql: ${TABLE}."BUDGET_DNU_C" ;;
    }

    dimension: mkto71_Acquisition_Program__c {
      label: "Acquisition Program"
      type: string
      sql: ${TABLE}."MKTO_71_ACQUISITION_PROGRAM_C" ;;
    }

    dimension: Budget_Sales__c {
      label: "Budget Sales"
      type: number
      sql: ${TABLE}."BUDGET_SALES_C" ;;
    }

    dimension: mkto_71_lead_score_c {
      type: number
      sql: ${TABLE}."MKTO_71_LEAD_SCORE_C" ;;
    }

    dimension: Has_Budget__c {
      label: "Has Budget"
      type: yesno
      sql: ${TABLE}."HAS_BUDGET_C" ;;
    }

    dimension_group: mkto_si__HideDate__c {
      label: "Hide Date"
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
      sql: ${TABLE}."MKTO_SI_HIDE_DATE_C" ;;
    }

    dimension: Has_Need__c {
      label: "Has Need"
      type: yesno
      sql: ${TABLE}."HAS_NEED_C" ;;
    }

    dimension_group: mkto_si__Last_Interesting_Moment_Date__c {
      label: "Last Interesting Moment Date"
      type: time
      sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DATE_C" ;;
    }

    dimension_group: Most_Recent_OLSA_Submit__c {
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
      sql: ${TABLE}."MOST_RECENT_OLSA_SUBMIT_C" ;;
    }

    dimension: Has_Timeline__c {
      label: "Has Timeline"
      type: yesno
      sql: ${TABLE}."HAS_TIMELINE_C" ;;
    }

    dimension: GCLID__c {
      label: "GCLID"
      type: string
      sql: ${TABLE}."GCLID_C" ;;
    }

    dimension: Initial_Contact_from_Lead_Pages__c {
      label: "Initial Contact from Lead Pages"
      type: string
      sql: ${TABLE}."INITIAL_CONTACT_FROM_LEAD_PAGES_C" ;;
    }

    dimension: phone_number_c {
      type: string
      sql: ${TABLE}."PHONE_NUMBER_C" ;;
    }

    dimension: Expecting_full_interview__c {
      label: "Expecting full interview"
      type: yesno
      sql: ${TABLE}."EXPECTING_FULL_INTERVIEW_C" ;;
    }

    dimension: sales_sharepoint_modified_by_c {
      type: string
      sql: ${TABLE}."SALES_SHAREPOINT_MODIFIED_BY_C" ;;
    }

    dimension: prospect_date_c {
      type: date
      sql: ${TABLE}."PROSPECT_DATE_C" ;;
    }

    dimension: Due_Date__c {
      label: "Due Date"
      type: date
      sql: ${TABLE}."DUE_DATE_C" ;;
    }

    dimension: Extension__c {
      label: "Extension"
      type: string
      sql: ${TABLE}."EXTENSION_C" ;;
    }

    dimension: Nurture_Reason_c {
      label: "Nurture Reason"
      type: string
      sql: ${TABLE}."NURTURE_REASON_C" ;;
    }

    dimension: Nurture_Explanation__c {
      label: "Nurture Explanation"
      type: string
      sql: ${TABLE}."NURTURE_EXPLANATION_C" ;;
    }

    dimension: prl_id_number_c {
      type: number
      sql: ${TABLE}."PRL_ID_NUMBER_C" ;;
    }

    dimension: Marketo_Cookie__c {
      label: "Marketo_Cookie__c"
      type: string
      sql: ${TABLE}."MARKETO_COOKIE_C" ;;
    }

    dimension: DID_Campaign__c {
      label: "DID"
      type: string
      sql: ${TABLE}."DID_CAMPAIGN_C" ;;
    }

    dimension: Do_not_sync_to_Marketo__c {
      label: "Do not sync to Marketo"
      type: yesno
      sql: ${TABLE}."DO_NOT_SYNC_TO_MARKETO_C" ;;
    }

    dimension: Most_Recent_Campaign_Name__c {
      label: "Most Recent Campaign Name"
      type: string
      sql: ${TABLE}."MOST_RECENT_CAMPAIGN_NAME_C" ;;
    }

    dimension: Most_Recent_Resource_Name__c {
      label: "Most Recent Resource Name"
      type: string
      sql: ${TABLE}."MOST_RECENT_RESOURCE_NAME_C" ;;
    }

    dimension: start_date_in_prl_c {
      type: yesno
      sql: ${TABLE}."START_DATE_IN_PRL_C" ;;
    }

    dimension: prospect_c {
      type: yesno
      sql: ${TABLE}."PROSPECT_C" ;;
    }

    dimension: original_lead_source_detail_c {
      type: string
      sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_DETAIL_C" ;;
    }

    dimension: original_lead_source_c {
      type: string
      sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_C" ;;
    }

    dimension: primary_business_need_c {
      type: string
      sql: ${TABLE}."PRIMARY_BUSINESS_NEED_C" ;;
    }

    dimension: original_campaign_name_c {
      type: string
      sql: ${TABLE}."ORIGINAL_CAMPAIGN_NAME_C" ;;
    }

    dimension: original_resource_name_c {
      type: string
      sql: ${TABLE}."ORIGINAL_RESOURCE_NAME_C" ;;
    }

    dimension: snappy_setup_c {
      type: string
      sql: ${TABLE}."SNAPPY_SETUP_C" ;;
    }

    dimension: Current_Interest_Level__c {
      label: "Current Interest Level"
      type: string
      sql: ${TABLE}."CURRENT_INTEREST_LEVEL_C" ;;
    }

    dimension: Convert_To_Opportunity__c {
      label: "Convert To Opportunity?"
      type: yesno
      sql: ${TABLE}."CONVERT_TO_OPPORTUNITY_C" ;;
    }

    dimension: promo_code_c {
      type: string
      sql: ${TABLE}."PROMO_CODE_C" ;;
    }

    dimension: referring_url_c {
      type: string
      sql: ${TABLE}."REFERRING_URL_C" ;;
    }

    dimension: Employees_Rage_x__c {
      label: "Employees - Range X"
      type: string
      sql: ${TABLE}."EMPLOYEES_RAGE_X_C" ;;
    }

    dimension: olsa_how_heard_c {
      type: string
      sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
    }

    dimension: did_c {
      label: "Mailer / Radio DID"
      type: string
      sql: ${TABLE}."DID_C" ;;
    }

    dimension: sre_c {
      type: date
      sql: ${TABLE}."SRE_C" ;;
    }

    dimension: of_Employees__c {
      label: "# of Employees"
      type: string
      sql: ${TABLE}."OF_EMPLOYEES_C" ;;
    }

    dimension: of_Employees_range__c {
      label: "# of Employees (range)"
      type: string
      sql: ${TABLE}."OF_EMPLOYEES_RANGE_C" ;;
    }

    dimension: revenue_c {
      type: string
      sql: ${TABLE}."REVENUE_C" ;;
    }

    dimension: product_interest_c {
      type: string
      sql: ${TABLE}."PRODUCT_INTEREST_C" ;;
    }

    dimension: timeline_dnu_c {
      type: string
      sql: ${TABLE}."TIMELINE_DNU_C" ;;
    }

    dimension: timeline_date_c {
      type: date
      sql: ${TABLE}."TIMELINE_DATE_C" ;;
    }

    dimension: LinkedIn_Profile__c {
      label: "LinkedIn Profile"
      type: string
      sql: ${TABLE}."LINKED_IN_PROFILE_C" ;;
    }

    dimension: Facebook_Profile__c {
      label: "Facebook Profile"
      type: string
      sql: ${TABLE}."FACEBOOK_PROFILE_C" ;;
    }

    dimension: sic_code_c {
      type: string
      sql: ${TABLE}."SIC_CODE_C" ;;
    }

    dimension: sic_description_c {
      type: string
      sql: ${TABLE}."SIC_DESCRIPTION_C" ;;
    }

    dimension: Main_Company_Phone_Number__c {
      label: "NetProspex Phone Number"
      type: string
      sql: ${TABLE}."MAIN_COMPANY_PHONE_NUMBER_C" ;;
    }

    dimension: CS_Lifetime_Customer_Value__c {
      label: "CS - Lifetime Customer Value"
      type: number
      sql: ${TABLE}."CS_LIFETIME_CUSTOMER_VALUE_C" ;;
    }

    dimension: primary_industry_c {
      type: string
      sql: ${TABLE}."PRIMARY_INDUSTRY_C" ;;
    }

    dimension: Business_Size__c {
      label: "Business Size"
      type: string
      sql: ${TABLE}."BUSINESS_SIZE_C" ;;
    }

    dimension: CS_Monthly_Plan__c {
      label: "CS - Monthly Plan"
      type: number
      sql: ${TABLE}."CS_MONTHLY_PLAN_C" ;;
    }

    dimension: CS_ROI__c {
      label: "CS - ROI"
      type: number
      sql: ${TABLE}."CS_ROI_C" ;;
    }

    dimension: NetProspex_ID__c {
      label: "NetProspex ID"
      type: string
      sql: ${TABLE}."NET_PROSPEX_ID_C" ;;
    }

    dimension: how_heard_c {
      type: string
      sql: ${TABLE}."HOW_HEARD_C" ;;
    }

    dimension: sales_notes_for_kickstarter_c {
      type: string
      sql: ${TABLE}."SALES_NOTES_FOR_KICKSTARTER_C" ;;
    }

    dimension: I_have_read_the_terms_and_conditions__c {
      label: "I have read the terms and conditions"
      type: yesno
      sql: ${TABLE}."I_HAVE_READ_THE_TERMS_AND_CONDITIONS_C" ;;
    }

    dimension: website_c {
      type: string
      sql: ${TABLE}."WEBSITE_C" ;;
    }

    dimension_group: KS_Sharepoint_Modified__c {
      label: "KS Sharepoint Modified"
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
      sql: ${TABLE}."KS_SHAREPOINT_MODIFIED_C" ;;
    }

    dimension: proununciation_and_gender_c {
      type: string
      sql: ${TABLE}."PROUNUNCIATION_AND_GENDER_C" ;;
    }

    dimension: Discussed_extended_hours__c {
      label: "Discussed extended hours"
      type: yesno
      sql: ${TABLE}."DISCUSSED_EXTENDED_HOURS_C" ;;
    }

    dimension: sales_sharepoint_owner_c {
      type: string
      sql: ${TABLE}."SALES_SHAREPOINT_OWNER_C" ;;
    }

    dimension: prospect_level_c {
      type: string
      sql: ${TABLE}."PROSPECT_LEVEL_C" ;;
    }

    dimension: sales_how_heard_c {
      type: string
      sql: ${TABLE}."SALES_HOW_HEARD_C" ;;
    }

    dimension: Handoff_Notes__c {
      label: "Handoff Notes"
      type: string
      sql: ${TABLE}."HANDOFF_NOTES_C" ;;
    }

    dimension: sales_sharepoint_created_date_c {
      type: date
      sql: ${TABLE}."SALES_SHAREPOINT_CREATED_DATE_C" ;;
    }

    dimension: Call_Volume__c {
      label: "Call Volume"
      type: string
      sql: ${TABLE}."CALL_VOLUME_C" ;;
    }

    dimension: sales_how_heard_note_c {
      type: string
      sql: ${TABLE}."SALES_HOW_HEARD_NOTE_C" ;;
    }

    dimension: Fun_Facts__c {
      label: "Fun Facts"
      type: string
      sql: ${TABLE}."FUN_FACTS_C" ;;
    }

    dimension: sales_sharepoint_id_c {
      type: string
      sql: ${TABLE}."SALES_SHAREPOINT_ID_C" ;;
    }

    dimension: rs_lifetime_customer_value_c {
      type: number
      sql: ${TABLE}."RS_LIFETIME_CUSTOMER_VALUE_C" ;;
    }

    dimension: sales_sharepoint_modified_c {
      type: date
      sql: ${TABLE}."SALES_SHAREPOINT_MODIFIED_C" ;;
    }

    dimension: sales_sharepoint_forwarding_c {
      type: string
      sql: ${TABLE}."SALES_SHAREPOINT_FORWARDING_C" ;;
    }

    dimension: Handoff_Contact_Notes__c {
      label: "Handoff Contact Notes"
      type: string
      sql: ${TABLE}."HANDOFF_CONTACT_NOTES_C" ;;
    }

    dimension: Feature_Request__c {
      label: "Feature Request"
      type: string
      sql: ${TABLE}."FEATURE_REQUEST_C" ;;
    }

    dimension: Notes__c {
      label: "Notes"
      type: string
      sql: ${TABLE}."NOTES_C" ;;
    }

    dimension: Business_Need__c {
      label: "Business Need"
      type: string
      sql: ${TABLE}."BUSINESS_NEED_C" ;;
    }

    dimension: timeline_c {
      type: string
      sql: ${TABLE}."TIMELINE_C" ;;
    }

    dimension: original_mql_c {
      type: date
      sql: ${TABLE}."ORIGINAL_MQL_C" ;;
    }

    dimension: Business_Size_Score__c {
      label: "Business Size Score"
      type: number
      sql: ${TABLE}."BUSINESS_SIZE_SCORE_C" ;;
    }

    dimension: call_volume_score_c {
      label: "Call Volume Score"
      type: number
      sql: ${TABLE}."CALL_VOLUME_SCORE_C" ;;
    }

    dimension: Business_Need_Score__c {
      label: "Business Need Score"
      type: number
      sql: ${TABLE}."BUSINESS_NEED_SCORE_C" ;;
    }

    dimension: timeline_score_c {
      type: number
      sql: ${TABLE}."TIMELINE_SCORE_C" ;;
    }

    dimension: sales_cycle_stage_c {
      type: string
      sql: ${TABLE}."SALES_CYCLE_STAGE_C" ;;
    }

    dimension_group: Most_Recent_MQL__c {
      label: "Most Recent MQL"
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
      sql: ${TABLE}."MOST_RECENT_MQL_C" ;;
    }

    dimension: original_sql_c {
      type: date
      sql: ${TABLE}."ORIGINAL_SQL_C" ;;
    }

    dimension_group: Most_Recent_SQL__c {
      label: "Most Recent SQL"
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
      sql: ${TABLE}."MOST_RECENT_SQL_C" ;;
    }

    dimension: original_sal_c {
      type: date
      sql: ${TABLE}."ORIGINAL_SAL_C" ;;
    }

    dimension_group: Most_Recent_SAL__c {
      label: "Most Recent SAL"
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
      sql: ${TABLE}."MOST_RECENT_SAL_C" ;;
    }

    dimension_group: CFE__c {
      label: "CFE"
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
      datatype: date
      sql: ${TABLE}."CFE_C" ;;
    }

    dimension: CFE_Type__c {
      label: "CFE Type"
      type: string
      sql: ${TABLE}."CFE_TYPE_C" ;;
    }

    dimension: Discussed_scheduling__c {
      label: "Discussed scheduling"
      type: yesno
      sql: ${TABLE}."DISCUSSED_SCHEDULING_C" ;;
    }

    dimension: sdr_c {
      type: string
      sql: ${TABLE}."SDR_C" ;;
    }

    dimension: record_source_c {
      type: string
      sql: ${TABLE}."RECORD_SOURCE_C" ;;
    }

    dimension: SDR_Checked__c {
      label: "Do Not Call - SDR Checked"
      type: yesno
      sql: ${TABLE}."SDR_CHECKED_C" ;;
    }

    dimension: mkto_si__Last_Interesting_Moment_Desc__c {
      label: "Last Interesting Moment Desc"
      type: string
      sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DESC_C" ;;
    }

    dimension: mkto_si__Last_Interesting_Moment_Source__c {
      label: "Last Interesting Moment Source"
      type: string
      sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_SOURCE_C" ;;
    }

    dimension: mkto_si__Last_Interesting_Moment_Type__c {
      label: "Last Interesting Moment Type"
      type: string
      sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_TYPE_C" ;;
    }

    dimension: mkto_si__MSIContactId__c {
      label: "MSIContactId"
      type: string
      sql: ${TABLE}."MKTO_SI_MSICONTACT_ID_C" ;;
    }

    dimension: mkto_si__Priority__c {
      label: "Engagement"
      type: number
      sql: ${TABLE}."MKTO_SI_PRIORITY_C" ;;
    }

    dimension: mkto_si_relative_score_value_c {
      type: number
      sql: ${TABLE}."MKTO_SI_RELATIVE_SCORE_VALUE_C" ;;
    }

    dimension: mkto_si_urgency_value_c {
      type: number
      sql: ${TABLE}."MKTO_SI_URGENCY_VALUE_C" ;;
    }

    dimension: publishing_ruby_number_c {
      type: yesno
      sql: ${TABLE}."PUBLISHING_RUBY_NUMBER_C" ;;
    }

    dimension_group: Disqualified_date__c {
      label: "Disqualified date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
          ]
      datatype: date
      sql: ${TABLE}."DISQUALIFIED_DATE_C" ;;
    }

    dimension: exp_ruby_how_heard_c {
      type: string
      sql: ${TABLE}."EXP_RUBY_HOW_HEARD_C" ;;
    }

    dimension: how_heard_detail_c {
      type: string
      sql: ${TABLE}."HOW_HEARD_DETAIL_C" ;;
    }

    dimension: workflow_trigger_c {
      type: yesno
      sql: ${TABLE}."WORKFLOW_TRIGGER_C" ;;
    }

    dimension: Budget__c {
      label: "Budget"
      type: string
      sql: ${TABLE}."BUDGET_C" ;;
    }

    dimension: rs_monthly_plan_c {
      type: number
      sql: ${TABLE}."RS_MONTHLY_PLAN_C" ;;
    }

    dimension: Authority__c {
      label: "Authority"
      type: string
      sql: ${TABLE}."AUTHORITY_C" ;;
    }

    dimension: rs_roi_c {
      type: number
      sql: ${TABLE}."RS_ROI_C" ;;
    }

    dimension: Marketing_Lead_Status__c {
      label: "Marketing Lead Status"
      type: string
      sql: ${TABLE}."MARKETING_LEAD_STATUS_C" ;;
    }

    dimension: service_use_c {
      type: string
      sql: ${TABLE}."SERVICE_USE_C" ;;
    }

    dimension: phone_provider_c {
      type: string
      sql: ${TABLE}."PHONE_PROVIDER_C" ;;
    }

    dimension: porting_requested_c {
      type: yesno
      sql: ${TABLE}."PORTING_REQUESTED_C" ;;
    }

    dimension: test_c {
      type: yesno
      sql: ${TABLE}."TEST_C" ;;
    }

    dimension: sales_after_hours_c {
      type: yesno
      sql: ${TABLE}."SALES_AFTER_HOURS_C" ;;
    }

    dimension: Disqualified_Reason__c {
      label: "Disqualified Reason"
      type: string
      sql: ${TABLE}."DISQUALIFIED_REASON_C" ;;
    }

    dimension: Agent_Email__c {
      label: "Agent Email"
      type: string
      sql: ${TABLE}."AGENT_EMAIL_C" ;;
    }

    dimension: Agent_Name__c {
      label: "Agent Name"
      type: string
      sql: ${TABLE}."AGENT_NAME_C" ;;
    }

    dimension: Lead_Assignment_Type__c {
      label: "Lead Assignment Type"
      type: string
      sql: ${TABLE}."LEAD_ASSIGNMENT_TYPE_C" ;;
    }

    dimension: Ad_Group__c {
      label: "Ad Group"
      type: string
      sql: ${TABLE}."AD_GROUP_C" ;;
    }

    dimension_group: CoR_Date__c {
      label: "CoR Date"
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
      sql: ${TABLE}."CO_R_DATE_C" ;;
    }

    dimension: Conversion_Asset__c {
      label: "Conversion Asset"
      type: string
      sql: ${TABLE}."CONVERSION_ASSET_C" ;;
    }

    dimension: Has_Viewed_Sales_Presentation__c {
      label: "Has Viewed Sales Presentation"
      type: yesno
      sql: ${TABLE}."HAS_VIEWED_SALES_PRESENTATION_C" ;;
    }

    dimension: Has_Viewed_Website_Pricing__c {
      label: "Has Viewed Website Pricing"
      type: yesno
      sql: ${TABLE}."HAS_VIEWED_WEBSITE_PRICING_C" ;;
    }

    dimension_group: MQL_Date__c {
      label: "MQL Date"
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
      sql: ${TABLE}."MQL_DATE_C" ;;
    }

    dimension_group: New_Lead_Date__c {
      label: "New Lead Date"
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
      sql: ${TABLE}."NEW_LEAD_DATE_C" ;;
    }

    dimension: original_active_c {
      type: date
      sql: ${TABLE}."ORIGINAL_ACTIVE_C" ;;
    }

    dimension: original_converted_c {
      type: date
      sql: ${TABLE}."ORIGINAL_CONVERTED_C" ;;
    }

    dimension: original_passive_c {
      type: date
      sql: ${TABLE}."ORIGINAL_PASSIVE_C" ;;
    }

    dimension_group: sql_date_c {
      type: time
      sql: ${TABLE}."SQL_DATE_C" ;;
    }

    dimension: search_term_c {
      type: string
      sql: ${TABLE}."SEARCH_TERM_C" ;;
    }

    dimension: BetterGrowth__c {
      label: "Better Growth"
      type: yesno
      sql: ${TABLE}."BETTER_GROWTH_C" ;;
    }

    dimension: cloudingo_agent_ardi_c {
      type: string
      sql: ${TABLE}."CLOUDINGO_AGENT_ARDI_C" ;;
    }

    dimension: cloudingo_agent_ar_c {
      type: string
      sql: ${TABLE}."CLOUDINGO_AGENT_AR_C" ;;
    }

    dimension: cloudingo_agent_as_c {
      type: number
      sql: ${TABLE}."CLOUDINGO_AGENT_AS_C" ;;
    }

    dimension: cloudingo_agent_atz_c {
      type: string
      sql: ${TABLE}."CLOUDINGO_AGENT_ATZ_C" ;;
    }

    dimension: cloudingo_agent_av_c {
      type: string
      sql: ${TABLE}."CLOUDINGO_AGENT_AV_C" ;;
    }

    dimension: cloudingo_agent_les_c {
      type: number
      sql: ${TABLE}."CLOUDINGO_AGENT_LES_C" ;;
    }

    dimension_group: First_Date__c {
      label: "First Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
          ]
      datatype: date
      sql: ${TABLE}."FIRST_DATE_C" ;;
    }

    dimension: Last_Campaign__c {
      label: "Last Campaign"
      type: string
      sql: ${TABLE}."LAST_CAMPAIGN_C" ;;
    }

    dimension_group: last_date_c {
      label: "Last Date"
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
      sql: ${TABLE}."LAST_DATE_C" ;;
    }

    dimension: Last_touch__c {
      label: "Last_touch__c"
      type: string
      sql: ${TABLE}."LAST_TOUCH_C" ;;
    }

    dimension: utm_content_c {
      type: string
      sql: ${TABLE}."UTM_CONTENT_C" ;;
    }

    dimension: utm_medium_c {
      type: string
      sql: ${TABLE}."UTM_MEDIUM_C" ;;
    }

    dimension: utm_term_c {
      type: string
      sql: ${TABLE}."UTM_TERM_C" ;;
    }

    dimension: utm_campaign_c {
      type: string
      sql: ${TABLE}."UTM_CAMPAIGN_C" ;;
    }

    dimension: Lead_Recipient__c {
      label: "Lead Recipient"
      type: string
      sql: ${TABLE}."LEAD_RECIPIENT_C" ;;
    }

    dimension: utm_campaign_history_c {
      type: string
      sql: ${TABLE}."UTM_CAMPAIGN_HISTORY_C" ;;
    }

    dimension: utm_campaign_most_recent_c {
      type: string
      sql: ${TABLE}."UTM_CAMPAIGN_MOST_RECENT_C" ;;
    }

    dimension: GH_Cohort__c {
      label: "GH Cohort"
      type: string
      sql: ${TABLE}."GH_COHORT_C" ;;
    }

    dimension: Database_Source__c {
      label: "Database Source"
      type: string
      sql: ${TABLE}."DATABASE_SOURCE_C" ;;
    }

    dimension: Demographic_Fields__c {
      label: "Demographic Fields"
      type: string
      sql: ${TABLE}."DEMOGRAPHIC_FIELDS_C" ;;
    }

    dimension: Marketing_Fields__c {
      label: "Marketing Fields"
      type: string
      sql: ${TABLE}."MARKETING_FIELDS_C" ;;
    }

    dimension_group: Connected_Date__c {
      label: "Connected Date"
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
      sql: ${TABLE}."CONNECTED_DATE_C" ;;
    }

    dimension: utm_vertical_c {
      type: string
      sql: ${TABLE}."UTM_VERTICAL_C" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: IndividualId {
      label: "Individual"
      type: string
      sql: ${TABLE}."INDIVIDUAL_ID" ;;
    }

    dimension: referree_sfdc_account_id_c {
      type: number
      sql: ${TABLE}."REFERREE_SFDC_ACCOUNT_ID_C" ;;
    }

    dimension: CSM_Referer__c {
      label: "CSM Referer"
      type: string
      sql: ${TABLE}."CSM_REFERER_C" ;;
    }

    dimension: nurture_c {
      type: yesno
      sql: ${TABLE}."NURTURE_C" ;;
    }

    dimension: Industry__c {
      label: "IndustryOLD"
      type: string
      sql: ${TABLE}."INDUSTRY_C" ;;
    }

    dimension: sub_industry_c {
      type: string
      sql: ${TABLE}."SUB_INDUSTRY_C" ;;
    }

    dimension: stage_of_research_c {
      type: string
      sql: ${TABLE}."STAGE_OF_RESEARCH_C" ;;
    }

    dimension: activity_metric_id {
      type: string
      sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
    }

    dimension: referrer_sfdc_account_id_c {
      type: string
      sql: ${TABLE}."REFERRER_SFDC_ACCOUNT_ID_C" ;;
    }

    dimension: COVID_19__c {
      label: "COVID-19"
      type: yesno
      sql: ${TABLE}."COVID_19_C" ;;
    }

    dimension_group: CoR_Accepted_Date__c {
      label: "CoR Accepted Date"
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
      sql: ${TABLE}."CO_R_ACCEPTED_DATE_C" ;;
    }

    dimension_group: LeanData_Assigned__c {
      label: "LeanData Assigned"
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
      sql: ${TABLE}."LEAN_DATA_ASSIGNED_C" ;;
    }

    dimension: Missed_SLA__c {
      label: "Missed SLA"
      type: yesno
      sql: ${TABLE}."MISSED_SLA_C" ;;
    }

    dimension: LeanData__Router_Status__c {
      label: "LeanData Router Status (obsolete)"
      type: string
      sql: ${TABLE}."LEAN_DATA_ROUTER_STATUS_C" ;;
    }

    dimension: LeanData__Matched_Lead__c {
      label: "LeanData Matched Lead (deprecated)"
      type: string
      sql: ${TABLE}."LEAN_DATA_MATCHED_LEAD_C" ;;
    }

    dimension: lean_data_routing_action_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
    }

    dimension: lean_data_reporting_matched_account_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_REPORTING_MATCHED_ACCOUNT_C" ;;
    }

    dimension: LeanData__Search_Index__c {
      label: "LeanData Search"
      type: string
      sql: ${TABLE}."LEAN_DATA_SEARCH_INDEX_C" ;;
    }

    dimension_group: lean_data_reporting_timestamp_c {
      type: time
      sql: ${TABLE}."LEAN_DATA_REPORTING_TIMESTAMP_C" ;;
    }

    dimension: LeanData__LD_Segment__c {
      label: "LD Segment"
      type: string
      sql: ${TABLE}."LEAN_DATA_LD_SEGMENT_C" ;;
    }

    dimension_group: LeanData__Marketing_Sys_Created_Date__c {
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
      sql: ${TABLE}."LEAN_DATA_MARKETING_SYS_CREATED_DATE_C" ;;
    }

    dimension: LeanData__Matched_Account__c {
      label: "LeanData Matched Account (deprecated)"
      type: string
      sql: ${TABLE}."LEAN_DATA_MATCHED_ACCOUNT_C" ;;
    }

    dimension: LeanData__A2B_Account__c {
      label: "A2B Account"
      type: string
      sql: ${TABLE}."LEAN_DATA_A_2_B_ACCOUNT_C" ;;
    }

    dimension: LeanData__Search__c {
      label: "LeanData Search (obsolete)"
      type: string
      sql: ${TABLE}."LEAN_DATA_SEARCH_C" ;;
    }

    dimension: LeanData__Routing_Status__c {
      label: "LeanData Routing Status"
      type: string
      sql: ${TABLE}."LEAN_DATA_ROUTING_STATUS_C" ;;
    }

    dimension: LeanData__A2B_Group__c {
      label: "A2B Group"
      type: string
      sql: ${TABLE}."LEAN_DATA_A_2_B_GROUP_C" ;;
    }

    dimension: LeanData__Matched_Buyer_Persona__c {
      label: "Matched Buyer Persona"
      type: string
      sql: ${TABLE}."LEAN_DATA_MATCHED_BUYER_PERSONA_C" ;;
    }

    dimension: lean_data_tag_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_TAG_C" ;;
    }

    dimension: lean_data_status_info_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_STATUS_INFO_C" ;;
    }

    dimension: LeanData__Modified_Score__c {
      label: "Modified Score"
      type: number
      sql: ${TABLE}."LEAN_DATA_MODIFIED_SCORE_C" ;;
    }

    dimension: previous_nurture_explanation_c {
      type: string
      sql: ${TABLE}."PREVIOUS_NURTURE_EXPLANATION_C" ;;
    }

    dimension: previous_nurture_reason_c {
      type: string
      sql: ${TABLE}."PREVIOUS_NURTURE_REASON_C" ;;
    }

    dimension: Do_Not_Email_Sales__c {
      label: "Do Not Email - Sales"
      type: yesno
      sql: ${TABLE}."DO_NOT_EMAIL_SALES_C" ;;
    }

    dimension_group: ringdna100__Last_Email_Attempt__c {
      label: "Last Email Attempt"
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_EMAIL_ATTEMPT_C" ;;
    }

    dimension: RDNACadence__Number_Of_Performed_Sequence_Actions__c {
      label: "Number Of Performed Sequence Actions"
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_PERFORMED_SEQUENCE_ACTIONS_C" ;;
    }

    dimension: RDNACadence__isActivated__c {
      label: "isActivated"
      type: yesno
      sql: ${TABLE}."RDNACADENCE_IS_ACTIVATED_C" ;;
    }

    dimension_group: ringdna100__First_Outbound_Message__c {
      label: "First Outbound Message"
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
      sql: ${TABLE}."RINGDNA_100_FIRST_OUTBOUND_MESSAGE_C" ;;
    }

    dimension_group: ringdna_100_last_inbound_call_c {
      label: "Last Inbound Call"
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_INBOUND_CALL_C" ;;
    }

    dimension: RDNACadence__Number_Of_Deferred_Sequence_Actions__c {
      label: "Number Of Deferred Sequence Actions"
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_DEFERRED_SEQUENCE_ACTIONS_C" ;;
    }

    dimension_group: RDNACadence__EntranceCriteria_Matched_Date__c {
      label: "EntranceCriteria Matched Date"
      type: time
      sql: ${TABLE}."RDNACADENCE_ENTRANCE_CRITERIA_MATCHED_DATE_C" ;;
    }

    dimension: ringdna100__Message_Attempts__c {
      label: "Message Attempts"
      type: number
      sql: ${TABLE}."RINGDNA_100_MESSAGE_ATTEMPTS_C" ;;
    }

    dimension_group: ringdna100__First_Outbound_Call__c {
      label: "First Outbound Call"
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
      sql: ${TABLE}."RINGDNA_100_FIRST_OUTBOUND_CALL_C" ;;
    }

    dimension: ring_dna_web_lead_c {
      type: yesno
      sql: ${TABLE}."RING_DNA_WEB_LEAD_C" ;;
    }

    dimension: rdnacadence_opened_sequence_email_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_OPENED_SEQUENCE_EMAIL_C" ;;
    }

    dimension: RDNACadence__Number_Of_Sequence_Emails_to_Opened__c {
      label: "Number Of Sequence Emails to Opened"
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_OPENED_C" ;;
    }

    dimension: rdnacadence_cadence_id_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_CADENCE_ID_C" ;;
    }

    dimension: rdnacadence_replied_to_sequence_email_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_REPLIED_TO_SEQUENCE_EMAIL_C" ;;
    }

    dimension: ringdna100__Email_Attempts__c {
      label: "Email Attempts"
      type: number
      sql: ${TABLE}."RINGDNA_100_EMAIL_ATTEMPTS_C" ;;
    }

    dimension: RDNACadence__Number_Of_Sequence_Emails_Sent__c {
      label: "Number Of Sequence Emails Sent"
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_SENT_C" ;;
    }

    dimension: ringdna_100_ring_dna_context_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_100_RING_DNA_CONTEXT_C" ;;
    }

    dimension: ringdna_100_time_to_respond_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_RESPOND_C" ;;
    }

    dimension: rdnacadence_priority_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_PRIORITY_C" ;;
    }

    dimension_group: ringdna100__First_Inbound_Call__c {
      label: "First Inbound Call"
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
      sql: ${TABLE}."RINGDNA_100_FIRST_INBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_time_to_first_dial_minutes_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_DIAL_MINUTES_C" ;;
    }

    dimension: RDNACadence__Number_Of_Sequence_Emails_to_Reply__c {
      label: "Number Of Sequence Emails to Reply"
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_REPLY_C" ;;
    }

    dimension_group: ringdna100__First_Inbound_Message__c {
      label: "First Inbound Message"
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
      sql: ${TABLE}."RINGDNA_100_FIRST_INBOUND_MESSAGE_C" ;;
    }

    dimension: ringdna_100_response_type_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_RESPONSE_TYPE_C" ;;
    }

    dimension_group: ringdna_100_last_inbound_message_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_INBOUND_MESSAGE_C" ;;
    }

    dimension_group: ringdna100__Last_Outbound_Call__c {
      label: "Last Outbound Call"
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_OUTBOUND_CALL_C" ;;
    }

    dimension: ringdna_has_opted_out_of_sms_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_HAS_OPTED_OUT_OF_SMS_C" ;;
    }

    dimension_group: ringdna100__Last_Outbound_Message__c {
      label: "Last Outbound Message"
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_OUTBOUND_MESSAGE_C" ;;
    }

    dimension: ringdna100__Call_Attempts__c {
      label: "Call Attempts"
      type: number
      sql: ${TABLE}."RINGDNA_100_CALL_ATTEMPTS_C" ;;
    }

    dimension: RDNACadence__CurrentGenerators__c {
      label: "Current Generator(s)"
      type: string
      sql: ${TABLE}."RDNACADENCE_CURRENT_GENERATORS_C" ;;
    }

    dimension: rdnacadence_cadence_performed_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_CADENCE_PERFORMED_C" ;;
    }

    dimension: rdnacadence_cadence_assignment_error_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_CADENCE_ASSIGNMENT_ERROR_C" ;;
    }

    dimension: Lead_Source_Detail_W2L__c {
      label: "Lead Source Detail W2L"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_W_2_L_C" ;;
    }

    dimension: Key_Decision_Maker__c {
      label: "Key Decision Maker"
      type: yesno
      sql: ${TABLE}."KEY_DECISION_MAKER_C" ;;
    }

    dimension: jigsaw {
      label: "Data.com Key"
      type: string
      sql: ${TABLE}."JIGSAW" ;;
    }

    dimension: rating {
      type: string
      sql: ${TABLE}."RATING" ;;
    }

    dimension: Lead_Source_W2L__c {
      label: "Lead Source W2L"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_W_2_L_C" ;;
    }

    dimension: Description {
      label: "Description"
      type: string
      sql: ${TABLE}."DESCRIPTION" ;;
    }

    dimension: Fax {
      label: "Fax"
      type: string
      sql: ${TABLE}."FAX" ;;
    }

    dimension: AnnualRevenue {
      label: "Annual Revenue"
      type: number
      sql: ${TABLE}."ANNUAL_REVENUE" ;;
    }

    dimension: DoNotCall {
      label: "Do Not Call"
      type: yesno
      sql: ${TABLE}."DO_NOT_CALL" ;;
    }

    dimension_group: LastTransferDate {
      label: "Last Transfer Date"
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
      sql: ${TABLE}."LAST_TRANSFER_DATE" ;;
    }

    dimension: HasOptedOutOfEmail {
      label: "Email Opt Out"
      type: yesno
      sql: ${TABLE}."HAS_OPTED_OUT_OF_EMAIL" ;;
    }

    dimension: DNSMPI__c {
      label: "DNSMPI"
      type: yesno
      sql: ${TABLE}."DNSMPI_C" ;;
    }

    dimension: override_time_zone_c {
      type: yesno
      sql: ${TABLE}."OVERRIDE_TIME_ZONE_C" ;;
    }

    dimension: ringdna_107_ring_dna_web_lead_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_107_RING_DNA_WEB_LEAD_C" ;;
    }

    dimension: Assign_Lead__c {
      label: "Assign Lead"
      type: yesno
      sql: ${TABLE}."ASSIGN_LEAD_C" ;;
    }

    dimension: Days_Since_Last_Act_Trigger__c {
      label: "Days Since Last Act Trigger"
      type: yesno
      sql: ${TABLE}."DAYS_SINCE_LAST_ACT_TRIGGER_C" ;;
    }

    dimension_group: Days_since_last_activity__c {
      label: "Days since last activity"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,

      ]
      datatype: date
      sql: ${TABLE}."DAYS_SINCE_LAST_ACTIVITY_C" ;;
    }

    dimension_group: first_email_date_time {
      type: time
      sql: ${TABLE}."FIRST_EMAIL_DATE_TIME" ;;
    }

    dimension_group: first_call_date_time {
      type: time
      sql: ${TABLE}."FIRST_CALL_DATE_TIME" ;;
    }

    dimension: nurture_status_c {
      label: "Nurture_Status__c"
      type: string
      sql: ${TABLE}."NURTURE_STATUS_C" ;;
    }

    dimension_group: Nurture_Date__c {
      label: "Nurture Date"
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
      sql: ${TABLE}."NURTURE_DATE_C" ;;
    }

    dimension: outbound_c {
      type: yesno
      sql: ${TABLE}."OUTBOUND_C" ;;
    }

    dimension_group: was_web_lead_c {
      type: time
      sql: ${TABLE}."WAS_WEB_LEAD_C" ;;
    }

    dimension: Alternate_Email__c {
      label: "Alternate Email"
      type: string
      sql: ${TABLE}."ALTERNATE_EMAIL_C" ;;
    }

    dimension: Lead_Source_Secondary_Detail__c {
      label: "Lead Source Secondary Detail"
      type: string
      sql: ${TABLE}."LEAD_SOURCE_SECONDARY_DETAIL_C" ;;
    }

    dimension_group: tcs_last_accepted_c {
      type: time
      sql: ${TABLE}."TCS_LAST_ACCEPTED_C" ;;
    }

    dimension: LinkedIn__c {
      label: "LinkedIn"
      type: string
      sql: ${TABLE}."LINKED_IN_C" ;;
    }

    dimension: CRM_Vendor_Lead__c {
      label: "CRM Vendor"
      type: string
      sql: ${TABLE}."CRM_VENDOR_LEAD_C" ;;
    }

    dimension: Agree_to_receive_text__c {
      label: "Agree to receive text"
      type: string
      sql: ${TABLE}."AGREE_TO_RECEIVE_TEXT_C" ;;
    }

    dimension: how_heard_sales_c {
      label: "How Heard"
      type: string
      sql: ${TABLE}."HOW_HEARD_SALES_C" ;;
    }

    dimension: referring_employee_c {
      type: string
      sql: ${TABLE}."REFERRING_EMPLOYEE_C" ;;
    }

    dimension: partner_account_c {
      type: string
      sql: ${TABLE}."PARTNER_ACCOUNT_C" ;;
    }

    dimension: How_Heard_Detail_Other__c {
      label: "How Heard Detail (Other)"
      type: string
      sql: ${TABLE}."HOW_HEARD_DETAIL_OTHER_C" ;;
    }

    dimension: How_Heard_Detail_Sales__c {
      label: "How Heard Detail"
      type: string
      sql: ${TABLE}."HOW_HEARD_DETAIL_SALES_C" ;;
    }

    dimension: referring_contact_c {
      type: string
      sql: ${TABLE}."REFERRING_CONTACT_C" ;;
    }

    dimension: prospect_industry_knowledge_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_C" ;;
    }

    dimension: prospect_pain_challenge_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_C" ;;
    }

    dimension: Initial_Plan_Interest__c {
      label: "Initial Plan Interest"
      type: string
      sql: ${TABLE}."INITIAL_PLAN_INTEREST_C" ;;
    }

    dimension: prospect_pain_challenge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_OTHER_C" ;;
    }

    dimension: prospect_industry_knowledge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_OTHER_C" ;;
    }

    dimension: Firmographic_Score__c {
      label: "Firmographic Score"
      type: number
      sql: ${TABLE}."FIRMOGRAPHIC_SCORE_C" ;;
    }

    dimension: Behavior_Score__c {
      label: "Behavior Score"
      type: number
      sql: ${TABLE}."BEHAVIOR_SCORE_C" ;;
    }

    dimension: master_lead_score_c {
      type: number
      sql: ${TABLE}."MASTER_LEAD_SCORE_C" ;;
    }

    dimension: pre_co_r_qualified_c {
      type: yesno
      sql: ${TABLE}."PRE_CO_R_QUALIFIED_C" ;;
    }

    dimension: ps_partner_key_c_c {
      type: string
      sql: ${TABLE}."PS_PARTNER_KEY_C_C" ;;
    }

    dimension: ps_partner_key_c {
      type: string
      sql: ${TABLE}."PS_PARTNER_KEY_C" ;;
    }

    dimension: ps_customer_key_c {
      type: string
      sql: ${TABLE}."PS_CUSTOMER_KEY_C" ;;
    }

    dimension: MQL_Primary_Score__c {
      label: "MQL Primary Score"
      type: number
      sql: ${TABLE}."MQL_PRIMARY_SCORE_C" ;;
    }

    dimension: CoR_Score_Old__c {
      label: "CoR Score (Old)"
      type: number
      sql: ${TABLE}."CO_R_SCORE_OLD_C" ;;
    }

    dimension: MQL_Score_Old__c {
      label: "MQL Score (Old)"
      type: number
      sql: ${TABLE}."MQL_SCORE_OLD_C" ;;
    }

    dimension: CoR_Primary_Score__c {
      label: "CoR Primary Score"
      type: number
      sql: ${TABLE}."CO_R_PRIMARY_SCORE_C" ;;
    }

    dimension: Calendly__CalendlyCreated__c {
      label: "Calendly Created"
      type: yesno
      sql: ${TABLE}."CALENDLY_CALENDLY_CREATED_C" ;;
    }

    dimension: rdnacadence_pending_sequence_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_PENDING_SEQUENCE_C" ;;
    }

    dimension: RDNACadence__Drip_Sequence_Pending__c {
      label: "Drip Sequence Pending"
      type: yesno
      sql: ${TABLE}."RDNACADENCE_DRIP_SEQUENCE_PENDING_C" ;;
    }

    dimension: Ready_to_Talk_to_Sales__c {
      label: "Interest - Ready to talk to sales"
      type: yesno
      sql: ${TABLE}."READY_TO_TALK_TO_SALES_C" ;;
    }

    dimension: nurture_score_c {
      type: number
      sql: ${TABLE}."NURTURE_SCORE_C" ;;
    }

    dimension: ruby_assessment_c {
      type: string
      sql: ${TABLE}."RUBY_ASSESSMENT_C" ;;
    }

    dimension: Asset_Ready_to_talk_to_sales__c {
      label: "Asset - Ready to talk to sales"
      type: yesno
      sql: ${TABLE}."ASSET_READY_TO_TALK_TO_SALES_C" ;;
    }

    dimension: Asset_ready_to_talk_to_sales_CoR__c {
      label: "Asset - ready to talk to sales (CoR)"
      type: string
      sql: ${TABLE}."ASSET_READY_TO_TALK_TO_SALES_CO_R_C" ;;
    }

    dimension: Interest_ready_to_talk_to_sales_CoR__c {
      label: "Interest - ready to talk to sales (CoR)"
      type: string
      sql: ${TABLE}."INTEREST_READY_TO_TALK_TO_SALES_CO_R_C" ;;
    }

    dimension: prospect_want_needs__c {
      label: "Key Features"
      type: string
      sql: ${TABLE}."PROSPECT_WANT_NEEDS_C" ;;
    }

    dimension: current_solution_negative_impact__c {
      label: "Business Impact"
      type: string
      sql: ${TABLE}."CURRENT_SOLUTION_NEGATIVE_IMPACT_C" ;;
    }

    dimension: motivation_for_solution_c {
      type: string
      sql: ${TABLE}."MOTIVATION_FOR_SOLUTION_C" ;;
    }

    dimension: motivation_for_solution_other_c {
      type: string
      sql: ${TABLE}."MOTIVATION_FOR_SOLUTION_OTHER_C" ;;
    }

    dimension: prospect_want_needs_other__c {
      label: "Key Features (other)"
      type: string
      sql: ${TABLE}."PROSPECT_WANT_NEEDS_OTHER_C" ;;
    }

    dimension: current_solution_negative_impact_other__c {
      label: "Business Impact (other)"
      type: string
      sql: ${TABLE}."CURRENT_SOLUTION_NEGATIVE_IMPACT_OTHER_C" ;;
    }

    dimension: ringdna_100_primary_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_PRIMARY_C" ;;
    }

    dimension: ringdna100__CurrentGenerators__c {
      label: "Current Generator(s) 2"
      type: string
      sql: ${TABLE}."RINGDNA_100_CURRENT_GENERATORS_C" ;;
    }

    dimension: ringdna100__NumberofLocations__c {
      label: "Number of Locations"
      type: number
      sql: ${TABLE}."RINGDNA_100_NUMBEROF_LOCATIONS_C" ;;
    }

    dimension: ringdna_100_siccode_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_SICCODE_C" ;;
    }

    dimension: ringdna_100_product_interest_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_PRODUCT_INTEREST_C" ;;
    }

    dimension_group: Last_Bulk_Import__c {
      label: "Last Bulk Import"
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
      sql: ${TABLE}."LAST_BULK_IMPORT_C" ;;
    }

    dimension: referrer_employee_id_c {
      type: string
      sql: ${TABLE}."REFERRER_EMPLOYEE_ID_C" ;;
    }

    dimension: ld_15_follow_up_c {
      type: yesno
      sql: ${TABLE}."LD_15_FOLLOW_UP_C" ;;
    }

    dimension_group: latest_outbound_call_c {
      type: time
      sql: ${TABLE}."LATEST_OUTBOUND_CALL_C" ;;
    }

    dimension: most_important_feature_c {
      type: string
      sql: ${TABLE}."MOST_IMPORTANT_FEATURE_C" ;;
    }

    dimension: event_ready_to_talk_to_sales_co_r_c {
      type: string
      sql: ${TABLE}."EVENT_READY_TO_TALK_TO_SALES_CO_R_C" ;;
    }

    dimension: event_ready_to_talk_to_sales_c {
      type: yesno
      sql: ${TABLE}."EVENT_READY_TO_TALK_TO_SALES_C" ;;
    }

    dimension: location {
      type: location
      sql_latitude: ${TABLE}."latitude" ;;
      sql_longitude: ${TABLE}."longitude" ;;
    }

    set: detail {
      fields: [
        id,
             ]
    }
  }
