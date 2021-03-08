view: account {
  sql_table_name: "SALESFORCE"."ACCOUNT"
    ;;
  drill_fields: [referrer_sfdc_account_id_c]

  dimension: referrer_sfdc_account_id_c {
    primary_key: yes
    type: string
    sql: ${TABLE}."REFERRER_SFDC_ACCOUNT_ID_C" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: account_executive_c {
    type: string
    sql: ${TABLE}."ACCOUNT_EXECUTIVE_C" ;;
  }

  dimension: account_name_ex_id_c {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME_EX_ID_C" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."ACCOUNT_SOURCE" ;;
  }

  dimension: aco_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."ACO_ID_C" ;;
  }

  dimension_group: aco_launch_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACO_LAUNCH_DATE_C" ;;
  }

  dimension: aco_type_c {
    type: string
    sql: ${TABLE}."ACO_TYPE_C" ;;
  }

  dimension: activity_metric_id {
    type: string
    sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
  }

  dimension: actual_monthly_recurring_revenue_c {
    type: number
    sql: ${TABLE}."ACTUAL_MONTHLY_RECURRING_REVENUE_C" ;;
  }

  dimension: address_2_c {
    type: string
    sql: ${TABLE}."ADDRESS_2_C" ;;
  }

  dimension: agent_id_c {
    type: string
    sql: ${TABLE}."AGENT_ID_C" ;;
  }

  dimension: ais_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."AIS_ID_C" ;;
  }

  dimension: aliases_c {
    type: string
    sql: ${TABLE}."ALIASES_C" ;;
  }

  dimension: annual_fee_c {
    type: number
    sql: ${TABLE}."ANNUAL_FEE_C" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  dimension: anticipated_return_timeframe_c {
    type: string
    sql: ${TABLE}."ANTICIPATED_RETURN_TIMEFRAME_C" ;;
  }

  dimension: appointment_types_c {
    type: string
    sql: ${TABLE}."APPOINTMENT_TYPES_C" ;;
  }

  dimension: assign_account_c {
    type: yesno
    sql: ${TABLE}."ASSIGN_ACCOUNT_C" ;;
  }

  dimension: assign_account_cross_sell_c {
    type: yesno
    sql: ${TABLE}."ASSIGN_ACCOUNT_CROSS_SELL_C" ;;
  }

  dimension: assign_account_win_back_c {
    type: yesno
    sql: ${TABLE}."ASSIGN_ACCOUNT_WIN_BACK_C" ;;
  }

  dimension: audience_member_size_c {
    type: string
    sql: ${TABLE}."AUDIENCE_MEMBER_SIZE_C" ;;
  }

  dimension: authority_c {
    type: string
    sql: ${TABLE}."AUTHORITY_C" ;;
  }

  dimension: auto_pay_off_reason_c {
    type: string
    sql: ${TABLE}."AUTO_PAY_OFF_REASON_C" ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}."BILLING_CITY" ;;
  }

  dimension: billing_contact_c {
    type: string
    sql: ${TABLE}."BILLING_CONTACT_C" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BILLING_COUNTRY" ;;
  }

  dimension: billing_day_c {
    type: string
    sql: ${TABLE}."BILLING_DAY_C" ;;
  }

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}."BILLING_GEOCODE_ACCURACY" ;;
  }

  dimension: billing_latitude {
    type: number
    sql: ${TABLE}."BILLING_LATITUDE" ;;
  }

  dimension: billing_longitude {
    type: number
    sql: ${TABLE}."BILLING_LONGITUDE" ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}."BILLING_POSTAL_CODE" ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}."BILLING_STATE" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."BILLING_STREET" ;;
  }

  dimension: blockers_c {
    type: string
    sql: ${TABLE}."BLOCKERS_C" ;;
  }

  dimension: blues_c {
    type: yesno
    sql: ${TABLE}."BLUES_C" ;;
  }

  dimension: budget_c {
    type: string
    sql: ${TABLE}."BUDGET_C" ;;
  }

  dimension: business_need_c {
    type: string
    sql: ${TABLE}."BUSINESS_NEED_C" ;;
  }

  dimension: business_need_score_c {
    type: number
    sql: ${TABLE}."BUSINESS_NEED_SCORE_C" ;;
  }

  dimension: business_size_c {
    type: string
    sql: ${TABLE}."BUSINESS_SIZE_C" ;;
  }

  dimension: business_size_score_c {
    type: number
    sql: ${TABLE}."BUSINESS_SIZE_SCORE_C" ;;
  }

  dimension: calendly_c {
    type: yesno
    sql: ${TABLE}."CALENDLY_C" ;;
  }

  dimension: call_volume_c {
    type: string
    sql: ${TABLE}."CALL_VOLUME_C" ;;
  }

  dimension: call_volume_score_c {
    type: number
    sql: ${TABLE}."CALL_VOLUME_SCORE_C" ;;
  }

  dimension_group: cancel_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CANCEL_DATE_C" ;;
  }

  dimension: cancel_note_c {
    type: string
    sql: ${TABLE}."CANCEL_NOTE_C" ;;
  }

  dimension: cancel_reason_c {
    type: string
    sql: ${TABLE}."CANCEL_REASON_C" ;;
  }

  dimension: captcha_complex_verification_c {
    type: string
    sql: ${TABLE}."CAPTCHA_COMPLEX_VERIFICATION_C" ;;
  }

  dimension: chat_bot_user_c {
    type: yesno
    sql: ${TABLE}."CHAT_BOT_USER_C" ;;
  }

  dimension: chat_brand_c {
    type: string
    sql: ${TABLE}."CHAT_BRAND_C" ;;
  }

  dimension: chat_csm_c {
    type: string
    sql: ${TABLE}."CHAT_CSM_C" ;;
  }

  dimension: chat_onboarding_owner_c {
    type: string
    sql: ${TABLE}."CHAT_ONBOARDING_OWNER_C" ;;
  }

  dimension: chat_performance_report_email_1_c {
    type: string
    sql: ${TABLE}."CHAT_PERFORMANCE_REPORT_EMAIL_1_C" ;;
  }

  dimension: chat_performance_report_email_2_c {
    type: string
    sql: ${TABLE}."CHAT_PERFORMANCE_REPORT_EMAIL_2_C" ;;
  }

  dimension: chat_platform_c {
    type: string
    sql: ${TABLE}."CHAT_PLATFORM_C" ;;
  }

  dimension: chat_wrapper_logging_c {
    type: yesno
    sql: ${TABLE}."CHAT_WRAPPER_LOGGING_C" ;;
  }

  dimension_group: chat_wrapper_logging_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CHAT_WRAPPER_LOGGING_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: chat_wrapper_product_type_c {
    type: string
    sql: ${TABLE}."CHAT_WRAPPER_PRODUCT_TYPE_C" ;;
  }

  dimension: chatbot_eligible_c {
    type: string
    sql: ${TABLE}."CHATBOT_ELIGIBLE_C" ;;
  }

  dimension_group: chatbot_user_activation_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CHATBOT_USER_ACTIVATION_DATE_C" ;;
  }

  dimension: chats_c {
    type: number
    sql: ${TABLE}."CHATS_C" ;;
  }

  dimension: child_cancel_reason_c {
    type: string
    sql: ${TABLE}."CHILD_CANCEL_REASON_C" ;;
  }

  dimension: churn_risk_c {
    type: yesno
    sql: ${TABLE}."CHURN_RISK_C" ;;
  }

  dimension: cloudingo_agent_bar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BAR_C" ;;
  }

  dimension: cloudingo_agent_bas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_BAS_C" ;;
  }

  dimension: cloudingo_agent_bav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BAV_C" ;;
  }

  dimension: cloudingo_agent_brdi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BRDI_C" ;;
  }

  dimension: cloudingo_agent_btz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BTZ_C" ;;
  }

  dimension: cloudingo_agent_sar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SAR_C" ;;
  }

  dimension: cloudingo_agent_sas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_SAS_C" ;;
  }

  dimension: cloudingo_agent_sav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SAV_C" ;;
  }

  dimension: cloudingo_agent_srdi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SRDI_C" ;;
  }

  dimension: cloudingo_agent_stz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_STZ_C" ;;
  }

  dimension_group: co_r_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CO_R_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: co_r_duration_c {
    type: number
    sql: ${TABLE}."CO_R_DURATION_C" ;;
  }

  dimension_group: cohort_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."COHORT_DATE_C" ;;
  }

  dimension: commercial_only_c {
    type: yesno
    sql: ${TABLE}."COMMERCIAL_ONLY_C" ;;
  }

  dimension: commercial_risk_c {
    type: number
    sql: ${TABLE}."COMMERCIAL_RISK_C" ;;
  }

  dimension: compensation_amount_c {
    type: string
    sql: ${TABLE}."COMPENSATION_AMOUNT_C" ;;
  }

  dimension: compensation_structure_c {
    type: string
    sql: ${TABLE}."COMPENSATION_STRUCTURE_C" ;;
  }

  dimension: contact_c {
    type: string
    sql: ${TABLE}."CONTACT_C" ;;
  }

  dimension_group: contract_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CONTRACT_DATE_C" ;;
  }

  dimension_group: contract_renewal_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CONTRACT_RENEWAL_DATE_C" ;;
  }

  dimension: coop_c {
    type: yesno
    sql: ${TABLE}."COOP_C" ;;
  }

  dimension: covid_19_c {
    type: yesno
    sql: ${TABLE}."COVID_19_C" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: csm_name_lookup_pendo_c {
    type: string
    sql: ${TABLE}."CSM_NAME_LOOKUP_PENDO_C" ;;
  }

  dimension: csm_referer_c {
    type: string
    sql: ${TABLE}."CSM_REFERER_C" ;;
  }

  dimension: current_plan_description_prl_c {
    type: string
    sql: ${TABLE}."CURRENT_PLAN_DESCRIPTION_PRL_C" ;;
  }

  dimension: current_plan_detail_id_prl_c {
    type: string
    sql: ${TABLE}."CURRENT_PLAN_DETAIL_ID_PRL_C" ;;
  }

  dimension: current_plan_minutes_prl_c {
    type: number
    sql: ${TABLE}."CURRENT_PLAN_MINUTES_PRL_C" ;;
  }

  dimension_group: current_plan_start_prl_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CURRENT_PLAN_START_PRL_C" ;;
  }

  dimension_group: customer_activation_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CUSTOMER_ACTIVATION_DATE_C" ;;
  }

  dimension: customer_status_c {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_C" ;;
  }

  dimension: customer_success_manager_c {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_C" ;;
  }

  dimension: database_source_c {
    type: string
    sql: ${TABLE}."DATABASE_SOURCE_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: did_c {
    type: string
    sql: ${TABLE}."DID_C" ;;
  }

  dimension: discount_amount_c {
    type: number
    sql: ${TABLE}."DISCOUNT_AMOUNT_C" ;;
  }

  dimension: discount_percentage_c {
    type: number
    sql: ${TABLE}."DISCOUNT_PERCENTAGE_C" ;;
  }

  dimension: discount_type_c {
    type: string
    sql: ${TABLE}."DISCOUNT_TYPE_C" ;;
  }

  dimension: dual_eligibles_c {
    type: number
    sql: ${TABLE}."DUAL_ELIGIBLES_C" ;;
  }

  dimension: duns_c {
    type: string
    sql: ${TABLE}."DUNS_C" ;;
  }

  dimension_group: end_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."END_DATE_C" ;;
  }

  dimension: facebook_project_c {
    type: string
    sql: ${TABLE}."FACEBOOK_PROJECT_C" ;;
  }

  dimension: feature_request_c {
    type: string
    sql: ${TABLE}."FEATURE_REQUEST_C" ;;
  }

  dimension: fehbp_c {
    type: number
    sql: ${TABLE}."FEHBP_C" ;;
  }

  dimension_group: first_charge_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FIRST_CHARGE_DATE_C" ;;
  }

  dimension_group: first_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FIRST_DATE_C" ;;
  }

  dimension: first_invoice_created_c {
    type: yesno
    sql: ${TABLE}."FIRST_INVOICE_CREATED_C" ;;
  }

  dimension: gclid_c {
    type: string
    sql: ${TABLE}."GCLID_C" ;;
  }

  dimension: geo_service_area_c {
    type: string
    sql: ${TABLE}."GEO_SERVICE_AREA_C" ;;
  }

  dimension: gh_cohort_c {
    type: string
    sql: ${TABLE}."GH_COHORT_C" ;;
  }

  dimension: google_project_c {
    type: string
    sql: ${TABLE}."GOOGLE_PROJECT_C" ;;
  }

  dimension_group: grass_hopper_billing_anniversary_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."GRASS_HOPPER_BILLING_ANNIVERSARY_C" ;;
  }

  dimension: grasshopper_customer_c {
    type: yesno
    sql: ${TABLE}."GRASSHOPPER_CUSTOMER_C" ;;
  }

  dimension: grasshopper_data_c {
    type: string
    sql: ${TABLE}."GRASSHOPPER_DATA_C" ;;
  }

  dimension: has_website_c {
    type: yesno
    sql: ${TABLE}."HAS_WEBSITE_C" ;;
  }

  dimension: health_plan_affiliates_sponsors_c {
    type: string
    sql: ${TABLE}."HEALTH_PLAN_AFFILIATES_SPONSORS_C" ;;
  }

  dimension: hipaa_c {
    type: yesno
    sql: ${TABLE}."HIPAA_C" ;;
  }

  dimension: how_heard_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_C" ;;
  }

  dimension: how_heard_detail_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_DETAIL_C" ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: individual_non_group_c {
    type: number
    sql: ${TABLE}."INDIVIDUAL_NON_GROUP_C" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: industry_c {
    type: string
    sql: ${TABLE}."INDUSTRY_C" ;;
  }

  dimension: initial_contact_c {
    type: string
    sql: ${TABLE}."INITIAL_CONTACT_C" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_live_chat_customer_c {
    type: yesno
    sql: ${TABLE}."IS_LIVE_CHAT_CUSTOMER_C" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}."JIGSAW_COMPANY_ID" ;;
  }

  dimension: landing_page_c {
    type: string
    sql: ${TABLE}."LANDING_PAGE_C" ;;
  }

  dimension: large_group_risk_c {
    type: number
    sql: ${TABLE}."LARGE_GROUP_RISK_C" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension: last_campaign_c {
    type: string
    sql: ${TABLE}."LAST_CAMPAIGN_C" ;;
  }

  dimension_group: last_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_DATE_C" ;;
  }

  dimension_group: last_force_login_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_FORCE_LOGIN_C" ;;
  }

  dimension_group: last_mobile_app_login_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_MOBILE_APP_LOGIN_C" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_payment_amt_prl_c {
    type: number
    sql: ${TABLE}."LAST_PAYMENT_AMT_PRL_C" ;;
  }

  dimension_group: last_payment_date_prl_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_PAYMENT_DATE_PRL_C" ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_touch_c {
    type: string
    sql: ${TABLE}."LAST_TOUCH_C" ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: latest_survey_result_c {
    type: string
    sql: ${TABLE}."LATEST_SURVEY_RESULT_C" ;;
  }

  dimension: lead_source_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_C" ;;
  }

  dimension: lead_source_detail_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_C" ;;
  }

  dimension: lean_data_ld_email_domains_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_LD_EMAIL_DOMAINS_C" ;;
  }

  dimension: lean_data_reporting_customer_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_CUSTOMER_C" ;;
  }

  dimension: lean_data_reporting_has_opportunity_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_HAS_OPPORTUNITY_C" ;;
  }

  dimension_group: lean_data_reporting_last_marketing_touch_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_MARKETING_TOUCH_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: lean_data_reporting_last_sales_touch_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_SALES_TOUCH_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_reporting_recent_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_RECENT_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_target_account_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_TARGET_ACCOUNT_C" ;;
  }

  dimension: lean_data_reporting_total_leads_and_contacts_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_LEADS_AND_CONTACTS_C" ;;
  }

  dimension: lean_data_reporting_total_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_total_sales_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_SALES_TOUCHES_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: lean_data_search_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SEARCH_C" ;;
  }

  dimension: legal_entity_name_c {
    type: string
    sql: ${TABLE}."LEGAL_ENTITY_NAME_C" ;;
  }

  dimension: loads_appointment_type_c {
    type: yesno
    sql: ${TABLE}."LOADS_APPOINTMENT_TYPE_C" ;;
  }

  dimension: main_company_phone_number_c {
    type: string
    sql: ${TABLE}."MAIN_COMPANY_PHONE_NUMBER_C" ;;
  }

  dimension: marketing_name_c {
    type: string
    sql: ${TABLE}."MARKETING_NAME_C" ;;
  }

  dimension: marketing_phone_c {
    type: string
    sql: ${TABLE}."MARKETING_PHONE_C" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: may_return_c {
    type: yesno
    sql: ${TABLE}."MAY_RETURN_C" ;;
  }

  dimension: medicaid_ffs_risk_c {
    type: number
    sql: ${TABLE}."MEDICAID_FFS_RISK_C" ;;
  }

  dimension: medicaid_hmo_risk_c {
    type: number
    sql: ${TABLE}."MEDICAID_HMO_RISK_C" ;;
  }

  dimension: medicaid_only_c {
    type: yesno
    sql: ${TABLE}."MEDICAID_ONLY_C" ;;
  }

  dimension: medicare_ccp_c {
    type: number
    sql: ${TABLE}."MEDICARE_CCP_C" ;;
  }

  dimension: medicare_cost_c {
    type: number
    sql: ${TABLE}."MEDICARE_COST_C" ;;
  }

  dimension: medicare_only_c {
    type: yesno
    sql: ${TABLE}."MEDICARE_ONLY_C" ;;
  }

  dimension: medicare_part_d_c {
    type: number
    sql: ${TABLE}."MEDICARE_PART_D_C" ;;
  }

  dimension: medicare_pffs_c {
    type: number
    sql: ${TABLE}."MEDICARE_PFFS_C" ;;
  }

  dimension: medicare_supplement_c {
    type: number
    sql: ${TABLE}."MEDICARE_SUPPLEMENT_C" ;;
  }

  dimension: membership_discount_c {
    type: string
    sql: ${TABLE}."MEMBERSHIP_DISCOUNT_C" ;;
  }

  dimension_group: most_recent_activation_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MOST_RECENT_ACTIVATION_C" ;;
  }

  dimension: most_recent_credit_memo_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_CREDIT_MEMO_C" ;;
  }

  dimension_group: most_recent_olsa_submit_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MOST_RECENT_OLSA_SUBMIT_C" ;;
  }

  dimension_group: mql_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."MQL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mql_duration_c {
    type: number
    sql: ${TABLE}."MQL_DURATION_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: new_lead_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."NEW_LEAD_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: new_lead_duration_c {
    type: number
    sql: ${TABLE}."NEW_LEAD_DURATION_C" ;;
  }

  dimension: next_steps_c {
    type: string
    sql: ${TABLE}."NEXT_STEPS_C" ;;
  }

  dimension_group: next_steps_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."NEXT_STEPS_DATE_C" ;;
  }

  dimension: no_sales_c {
    type: yesno
    sql: ${TABLE}."NO_SALES_C" ;;
  }

  dimension: not_the_right_fit_c {
    type: yesno
    sql: ${TABLE}."NOT_THE_RIGHT_FIT_C" ;;
  }

  dimension: notes_c {
    type: string
    sql: ${TABLE}."NOTES_C" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: of_add_lines_c {
    type: number
    sql: ${TABLE}."OF_ADD_LINES_C" ;;
  }

  dimension: of_employees_c {
    type: string
    sql: ${TABLE}."OF_EMPLOYEES_C" ;;
  }

  dimension: of_employees_range_c {
    type: string
    sql: ${TABLE}."OF_EMPLOYEES_RANGE_C" ;;
  }

  dimension_group: olsa_started_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."OLSA_STARTED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: onboarding_c {
    type: string
    sql: ${TABLE}."ONBOARDING_C" ;;
  }

  dimension_group: original_active_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORIGINAL_ACTIVE_C" ;;
  }

  dimension_group: original_close_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."ORIGINAL_CLOSE_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: original_converted_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORIGINAL_CONVERTED_C" ;;
  }

  dimension: original_lead_source_c {
    type: string
    sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_C" ;;
  }

  dimension: original_lead_source_detail_c {
    type: string
    sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_DETAIL_C" ;;
  }

  dimension_group: original_passive_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORIGINAL_PASSIVE_C" ;;
  }

  dimension: other_c {
    type: number
    sql: ${TABLE}."OTHER_C" ;;
  }

  dimension: other_unspecified_risk_c {
    type: number
    sql: ${TABLE}."OTHER_UNSPECIFIED_RISK_C" ;;
  }

  dimension: outbound_texts_c {
    type: yesno
    sql: ${TABLE}."OUTBOUND_TEXTS_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: owner_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."OWNER_ID_C" ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}."OWNERSHIP" ;;
  }

  dimension: pace_program_c {
    type: number
    sql: ${TABLE}."PACE_PROGRAM_C" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: partner_c {
    type: string
    sql: ${TABLE}."PARTNER_C" ;;
  }

  dimension: partner_payout_c {
    type: string
    sql: ${TABLE}."PARTNER_PAYOUT_C" ;;
  }

  dimension_group: partner_since_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PARTNER_SINCE_C" ;;
  }

  dimension: partner_type_c {
    type: string
    sql: ${TABLE}."PARTNER_TYPE_C" ;;
  }

  dimension_group: partner_won_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PARTNER_WON_DATE_C" ;;
  }

  dimension: partnership_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_C" ;;
  }

  dimension: partnership_discount_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_DISCOUNT_C" ;;
  }

  dimension: partnership_percent_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_PERCENT_C" ;;
  }

  dimension: pc_account_id_number_c {
    type: string
    sql: ${TABLE}."PC_ACCOUNT_ID_NUMBER_C" ;;
  }

  dimension: pc_acct_number_c {
    type: string
    sql: ${TABLE}."PC_ACCT_NUMBER_C" ;;
  }

  dimension: pc_auto_pay_off_c {
    type: yesno
    sql: ${TABLE}."PC_AUTO_PAY_OFF_C" ;;
  }

  dimension: pc_chat_brand_c {
    type: string
    sql: ${TABLE}."PC_CHAT_BRAND_C" ;;
  }

  dimension: pc_customer_id_c {
    type: string
    sql: ${TABLE}."PC_CUSTOMER_ID_C" ;;
  }

  dimension: pc_region_c {
    type: string
    sql: ${TABLE}."PC_REGION_C" ;;
  }

  dimension: pco_id_c {
    type: string
    sql: ${TABLE}."PCO_ID_C" ;;
  }

  dimension: pendo_csm_2_c {
    type: string
    sql: ${TABLE}."PENDO_CSM_2_C" ;;
  }

  dimension_group: person_first_call_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."PERSON_FIRST_CALL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: person_first_email_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."PERSON_FIRST_EMAIL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: pharmacy_benefit_manager_c {
    type: string
    sql: ${TABLE}."PHARMACY_BENEFIT_MANAGER_C" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: plan_design_c {
    type: string
    sql: ${TABLE}."PLAN_DESIGN_C" ;;
  }

  dimension: plan_owner_c {
    type: string
    sql: ${TABLE}."PLAN_OWNER_C" ;;
  }

  dimension: plan_owner_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PLAN_OWNER_ID_C" ;;
  }

  dimension: ported_feature_c {
    type: yesno
    sql: ${TABLE}."PORTED_FEATURE_C" ;;
  }

  dimension: primary_industry_c {
    type: string
    sql: ${TABLE}."PRIMARY_INDUSTRY_C" ;;
  }

  dimension: prl_company_guid_c {
    type: string
    sql: ${TABLE}."PRL_COMPANY_GUID_C" ;;
  }

  dimension: prl_company_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_COMPANY_ID_C" ;;
  }

  dimension: prl_customer_guid_c {
    type: string
    sql: ${TABLE}."PRL_CUSTOMER_GUID_C" ;;
  }

  dimension: prl_customer_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_CUSTOMER_ID_C" ;;
  }

  dimension: prl_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_ID_C" ;;
  }

  dimension: pro_rate_first_charge_c {
    type: yesno
    sql: ${TABLE}."PRO_RATE_FIRST_CHARGE_C" ;;
  }

  dimension: product_type_c {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE_C" ;;
  }

  dimension: progress_c {
    type: string
    sql: ${TABLE}."PROGRESS_C" ;;
  }

  dimension: progress_notes_c {
    type: string
    sql: ${TABLE}."PROGRESS_NOTES_C" ;;
  }

  dimension: promo_code_c {
    type: string
    sql: ${TABLE}."PROMO_CODE_C" ;;
  }

  dimension: provider_affiliates_sponsors_c {
    type: string
    sql: ${TABLE}."PROVIDER_AFFILIATES_SPONSORS_C" ;;
  }

  dimension: provider_sponsored_c {
    type: yesno
    sql: ${TABLE}."PROVIDER_SPONSORED_C" ;;
  }

  dimension: public_exchanges_c {
    type: yesno
    sql: ${TABLE}."PUBLIC_EXCHANGES_C" ;;
  }

  dimension: public_sector_risk_c {
    type: number
    sql: ${TABLE}."PUBLIC_SECTOR_RISK_C" ;;
  }

  dimension: pure_chat_guid_c {
    type: string
    sql: ${TABLE}."PURE_CHAT_GUID_C" ;;
  }

  dimension: pure_chat_logging_c {
    type: yesno
    sql: ${TABLE}."PURE_CHAT_LOGGING_C" ;;
  }

  dimension: pure_chat_user_c {
    type: yesno
    sql: ${TABLE}."PURE_CHAT_USER_C" ;;
  }

  dimension_group: purechat_logging_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."PURECHAT_LOGGING_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: reach_c {
    type: number
    sql: ${TABLE}."REACH_C" ;;
  }

  dimension: recent_customer_data_c {
    type: string
    sql: ${TABLE}."RECENT_CUSTOMER_DATA_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: referring_email_c {
    type: string
    sql: ${TABLE}."REFERRING_EMAIL_C" ;;
  }

  dimension: referring_name_c {
    type: string
    sql: ${TABLE}."REFERRING_NAME_C" ;;
  }

  dimension: required_fields_c {
    type: string
    sql: ${TABLE}."REQUIRED_FIELDS_C" ;;
  }

  dimension: revenue_c {
    type: string
    sql: ${TABLE}."REVENUE_C" ;;
  }

  dimension: revenue_range_c {
    type: string
    sql: ${TABLE}."REVENUE_RANGE_C" ;;
  }

  dimension: ringdna_100_call_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_CALL_ATTEMPTS_C" ;;
  }

  dimension: ringdna_100_email_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_EMAIL_ATTEMPTS_C" ;;
  }

  dimension_group: ringdna_100_first_inbound_call_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_INBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_first_outbound_call_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_OUTBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_email_attempt_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."RINGDNA_100_LAST_EMAIL_ATTEMPT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_inbound_call_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."RINGDNA_100_LAST_INBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_outbound_call_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."RINGDNA_100_LAST_OUTBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ringdna_100_response_type_c {
    type: string
    sql: ${TABLE}."RINGDNA_100_RESPONSE_TYPE_C" ;;
  }

  dimension: ringdna_100_ring_dna_context_c {
    type: yesno
    sql: ${TABLE}."RINGDNA_100_RING_DNA_CONTEXT_C" ;;
  }

  dimension: ringdna_100_time_to_first_dial_minutes_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_DIAL_MINUTES_C" ;;
  }

  dimension: ringdna_100_time_to_first_response_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_RESPONSE_C" ;;
  }

  dimension: robocall_feature_c {
    type: yesno
    sql: ${TABLE}."ROBOCALL_FEATURE_C" ;;
  }

  dimension: ruby_assist_c {
    type: yesno
    sql: ${TABLE}."RUBY_ASSIST_C" ;;
  }

  dimension: sales_c {
    type: string
    sql: ${TABLE}."SALES_C" ;;
  }

  dimension_group: sales_sharepoint_created_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SALES_SHAREPOINT_CREATED_DATE_C" ;;
  }

  dimension_group: scheduling_approval_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SCHEDULING_APPROVAL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: scheduling_approval_status_c {
    type: string
    sql: ${TABLE}."SCHEDULING_APPROVAL_STATUS_C" ;;
  }

  dimension: scheduling_beta_c {
    type: yesno
    sql: ${TABLE}."SCHEDULING_BETA_C" ;;
  }

  dimension: scheduling_beta_notes_c {
    type: string
    sql: ${TABLE}."SCHEDULING_BETA_NOTES_C" ;;
  }

  dimension: scheduling_beta_status_c {
    type: string
    sql: ${TABLE}."SCHEDULING_BETA_STATUS_C" ;;
  }

  dimension_group: scheduling_cancel_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SCHEDULING_CANCEL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: scheduling_platform_name_c {
    type: string
    sql: ${TABLE}."SCHEDULING_PLATFORM_NAME_C" ;;
  }

  dimension_group: scheduling_start_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SCHEDULING_START_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: scheduling_status_c {
    type: string
    sql: ${TABLE}."SCHEDULING_STATUS_C" ;;
  }

  dimension: scheduling_url_c {
    type: string
    sql: ${TABLE}."SCHEDULING_URL_C" ;;
  }

  dimension: schip_c {
    type: number
    sql: ${TABLE}."SCHIP_C" ;;
  }

  dimension: sector_c {
    type: string
    sql: ${TABLE}."SECTOR_C" ;;
  }

  dimension: send_getting_started_video_c {
    type: yesno
    sql: ${TABLE}."SEND_GETTING_STARTED_VIDEO_C" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."SHIPPING_CITY" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY" ;;
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}."SHIPPING_GEOCODE_ACCURACY" ;;
  }

  dimension: shipping_latitude {
    type: number
    sql: ${TABLE}."SHIPPING_LATITUDE" ;;
  }

  dimension: shipping_longitude {
    type: number
    sql: ${TABLE}."SHIPPING_LONGITUDE" ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}."SHIPPING_POSTAL_CODE" ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}."SHIPPING_STATE" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."SHIPPING_STREET" ;;
  }

  dimension: should_this_partner_get_full_credit_c {
    type: yesno
    sql: ${TABLE}."SHOULD_THIS_PARTNER_GET_FULL_CREDIT_C" ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}."SIC" ;;
  }

  dimension: sic_code_c {
    type: string
    sql: ${TABLE}."SIC_CODE_C" ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}."SIC_DESC" ;;
  }

  dimension: sic_description_c {
    type: string
    sql: ${TABLE}."SIC_DESCRIPTION_C" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."SITE" ;;
  }

  dimension: small_group_risk_c {
    type: number
    sql: ${TABLE}."SMALL_GROUP_RISK_C" ;;
  }

  dimension: social_c {
    type: yesno
    sql: ${TABLE}."SOCIAL_C" ;;
  }

  dimension: specialty_pharmacy_c {
    type: string
    sql: ${TABLE}."SPECIALTY_PHARMACY_C" ;;
  }

  dimension_group: sql_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SQL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ssi_collection_c {
    type: string
    sql: ${TABLE}."SSI_COLLECTION_C" ;;
  }

  dimension: stage_of_research_c {
    type: string
    sql: ${TABLE}."STAGE_OF_RESEARCH_C" ;;
  }

  dimension: status_c {
    type: string
    sql: ${TABLE}."STATUS_C" ;;
  }

  dimension: stripe_card_token_c {
    type: string
    sql: ${TABLE}."STRIPE_CARD_TOKEN_C" ;;
  }

  dimension: stripe_customer_token_c {
    type: string
    sql: ${TABLE}."STRIPE_CUSTOMER_TOKEN_C" ;;
  }

  dimension: sub_industry_c {
    type: string
    sql: ${TABLE}."SUB_INDUSTRY_C" ;;
  }

  dimension: subsidiary_city_c {
    type: string
    sql: ${TABLE}."SUBSIDIARY_CITY_C" ;;
  }

  dimension: subsidiary_name_c {
    type: string
    sql: ${TABLE}."SUBSIDIARY_NAME_C" ;;
  }

  dimension: subsidiary_state_c {
    type: string
    sql: ${TABLE}."SUBSIDIARY_STATE_C" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: tcs_last_accepted_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."TCS_LAST_ACCEPTED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: tcs_last_accepted_id_c {
    type: string
    sql: ${TABLE}."TCS_LAST_ACCEPTED_ID_C" ;;
  }

  dimension: terms_and_conditions_c {
    type: string
    sql: ${TABLE}."TERMS_AND_CONDITIONS_C" ;;
  }

  dimension: test_account_c {
    type: yesno
    sql: ${TABLE}."TEST_ACCOUNT_C" ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}."TICKER_SYMBOL" ;;
  }

  dimension: tier_c {
    type: string
    sql: ${TABLE}."TIER_C" ;;
  }

  dimension: time_zone_adjustability_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_ADJUSTABILITY_C" ;;
  }

  dimension: time_zone_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_C" ;;
  }

  dimension: timeline_c {
    type: string
    sql: ${TABLE}."TIMELINE_C" ;;
  }

  dimension: timeline_score_c {
    type: number
    sql: ${TABLE}."TIMELINE_SCORE_C" ;;
  }

  dimension: total_fully_funded_c {
    type: number
    sql: ${TABLE}."TOTAL_FULLY_FUNDED_C" ;;
  }

  dimension: total_group_risk_c {
    type: number
    sql: ${TABLE}."TOTAL_GROUP_RISK_C" ;;
  }

  dimension: total_medical_c {
    type: number
    sql: ${TABLE}."TOTAL_MEDICAL_C" ;;
  }

  dimension: total_medicare_advantage_c {
    type: number
    sql: ${TABLE}."TOTAL_MEDICARE_ADVANTAGE_C" ;;
  }

  dimension: total_self_funded_c {
    type: number
    sql: ${TABLE}."TOTAL_SELF_FUNDED_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: utm_campaign_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_C" ;;
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

  dimension: utm_vertical_c {
    type: string
    sql: ${TABLE}."UTM_VERTICAL_C" ;;
  }

  dimension: web_project_legacy_acct_c {
    type: string
    sql: ${TABLE}."WEB_PROJECT_LEGACY_ACCT_C" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  dimension: website_project_c {
    type: string
    sql: ${TABLE}."WEBSITE_PROJECT_C" ;;
  }

  dimension: went_to_competitor_c {
    type: yesno
    sql: ${TABLE}."WENT_TO_COMPETITOR_C" ;;
  }

  dimension: x_24_7_feature_c {
    type: yesno
    sql: ${TABLE}."X_24_7_FEATURE_C" ;;
  }

  dimension: zuora_active_c {
    type: string
    sql: ${TABLE}."ZUORA_ACTIVE_C" ;;
  }

  dimension: zuora_customer_priority_c {
    type: string
    sql: ${TABLE}."ZUORA_CUSTOMER_PRIORITY_C" ;;
  }

  dimension: zuora_numberof_locations_c {
    type: number
    sql: ${TABLE}."ZUORA_NUMBEROF_LOCATIONS_C" ;;
  }

  dimension: zuora_sla_c {
    type: string
    sql: ${TABLE}."ZUORA_SLA_C" ;;
  }

  dimension_group: zuora_slaexpiration_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ZUORA_SLAEXPIRATION_DATE_C" ;;
  }

  dimension: zuora_slaserial_number_c {
    type: string
    sql: ${TABLE}."ZUORA_SLASERIAL_NUMBER_C" ;;
  }

  dimension: zuora_upsell_opportunity_c {
    type: string
    sql: ${TABLE}."ZUORA_UPSELL_OPPORTUNITY_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [referrer_sfdc_account_id_c, name, case.count, contact.count, opportunity.count]
  }
}
