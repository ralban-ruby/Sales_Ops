view: lead {
  sql_table_name: "SALESFORCE"."LEAD"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
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

  dimension: activity_metric_id {
    type: string
    sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
  }

  dimension: ad_group_c {
    type: string
    sql: ${TABLE}."AD_GROUP_C" ;;
  }

  dimension: additional_people_c {
    type: string
    sql: ${TABLE}."ADDITIONAL_PEOPLE_C" ;;
  }

  dimension: agent_email_c {
    type: string
    sql: ${TABLE}."AGENT_EMAIL_C" ;;
  }

  dimension: agent_name_c {
    type: string
    sql: ${TABLE}."AGENT_NAME_C" ;;
  }

  dimension: also_involved_c {
    type: string
    sql: ${TABLE}."ALSO_INVOLVED_C" ;;
  }

  dimension: alternate_phone_c {
    type: string
    sql: ${TABLE}."ALTERNATE_PHONE_C" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  dimension: assign_lead_c {
    type: yesno
    sql: ${TABLE}."ASSIGN_LEAD_C" ;;
  }

  dimension: authority_c {
    type: string
    sql: ${TABLE}."AUTHORITY_C" ;;
  }

  dimension: better_growth_c {
    type: yesno
    sql: ${TABLE}."BETTER_GROWTH_C" ;;
  }

  dimension: billing_usage_upgrades_downgrades_c {
    type: yesno
    sql: ${TABLE}."BILLING_USAGE_UPGRADES_DOWNGRADES_C" ;;
  }

  dimension: budget_c {
    type: string
    sql: ${TABLE}."BUDGET_C" ;;
  }

  dimension: budget_dnu_c {
    type: string
    sql: ${TABLE}."BUDGET_DNU_C" ;;
  }

  dimension: budget_sales_c {
    type: number
    sql: ${TABLE}."BUDGET_SALES_C" ;;
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

  dimension: call_handling_directory_c {
    type: string
    sql: ${TABLE}."CALL_HANDLING_DIRECTORY_C" ;;
  }

  dimension: call_handling_individuals_c {
    type: string
    sql: ${TABLE}."CALL_HANDLING_INDIVIDUALS_C" ;;
  }

  dimension: call_volume_c {
    type: string
    sql: ${TABLE}."CALL_VOLUME_C" ;;
  }

  dimension: call_volume_score_c {
    type: number
    sql: ${TABLE}."CALL_VOLUME_SCORE_C" ;;
  }

  dimension_group: cfe_c {
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
    sql: ${TABLE}."CFE_C" ;;
  }

  dimension: cfe_type_c {
    type: string
    sql: ${TABLE}."CFE_TYPE_C" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension_group: close_date_c {
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
    sql: CAST(${TABLE}."CLOSE_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: close_date_checkbox_c {
    type: yesno
    sql: ${TABLE}."CLOSE_DATE_CHECKBOX_C" ;;
  }

  dimension: cloudingo_agent_ar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_AR_C" ;;
  }

  dimension: cloudingo_agent_ardi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_ARDI_C" ;;
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

  dimension_group: co_r_accepted_date_c {
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
    sql: CAST(${TABLE}."CO_R_ACCEPTED_DATE_C" AS TIMESTAMP_NTZ) ;;
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

  dimension: company {
    type: string
    sql: ${TABLE}."COMPANY" ;;
  }

  dimension_group: connected_date_c {
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
    sql: CAST(${TABLE}."CONNECTED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: conversion_asset_c {
    type: string
    sql: ${TABLE}."CONVERSION_ASSET_C" ;;
  }

  dimension: convert_to_opportunity_c {
    type: yesno
    sql: ${TABLE}."CONVERT_TO_OPPORTUNITY_C" ;;
  }

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}."CONVERTED_ACCOUNT_ID" ;;
  }

  dimension: converted_contact_id {
    type: string
    sql: ${TABLE}."CONVERTED_CONTACT_ID" ;;
  }

  dimension_group: converted {
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
    sql: ${TABLE}."CONVERTED_DATE" ;;
  }

  dimension: converted_opportunity_id {
    type: string
    sql: ${TABLE}."CONVERTED_OPPORTUNITY_ID" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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

  dimension: cs_lifetime_customer_value_c {
    type: number
    sql: ${TABLE}."CS_LIFETIME_CUSTOMER_VALUE_C" ;;
  }

  dimension: cs_monthly_plan_c {
    type: number
    sql: ${TABLE}."CS_MONTHLY_PLAN_C" ;;
  }

  dimension: cs_roi_c {
    type: number
    sql: ${TABLE}."CS_ROI_C" ;;
  }

  dimension: csm_referer_c {
    type: string
    sql: ${TABLE}."CSM_REFERER_C" ;;
  }

  dimension: current_interest_level_c {
    type: string
    sql: ${TABLE}."CURRENT_INTEREST_LEVEL_C" ;;
  }

  dimension: customer_loyalty_checkbox_c {
    type: yesno
    sql: ${TABLE}."CUSTOMER_LOYALTY_CHECKBOX_C" ;;
  }

  dimension: database_source_c {
    type: string
    sql: ${TABLE}."DATABASE_SOURCE_C" ;;
  }

  dimension: days_since_last_act_trigger_c {
    type: yesno
    sql: ${TABLE}."DAYS_SINCE_LAST_ACT_TRIGGER_C" ;;
  }

  dimension_group: days_since_last_activity_c {
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
    sql: ${TABLE}."DAYS_SINCE_LAST_ACTIVITY_C" ;;
  }

  dimension: demographic_fields_c {
    type: string
    sql: ${TABLE}."DEMOGRAPHIC_FIELDS_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: did_c {
    type: string
    sql: ${TABLE}."DID_C" ;;
  }

  dimension: did_campaign_c {
    type: string
    sql: ${TABLE}."DID_CAMPAIGN_C" ;;
  }

  dimension: did_you_search_salesforce_c {
    type: yesno
    sql: ${TABLE}."DID_YOU_SEARCH_SALESFORCE_C" ;;
  }

  dimension: discount_c {
    type: string
    sql: ${TABLE}."DISCOUNT_C" ;;
  }

  dimension: discussed_extended_hours_c {
    type: yesno
    sql: ${TABLE}."DISCUSSED_EXTENDED_HOURS_C" ;;
  }

  dimension: discussed_scheduling_c {
    type: yesno
    sql: ${TABLE}."DISCUSSED_SCHEDULING_C" ;;
  }

  dimension_group: disqualified_date_c {
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
    sql: ${TABLE}."DISQUALIFIED_DATE_C" ;;
  }

  dimension: disqualified_reason_c {
    type: string
    sql: ${TABLE}."DISQUALIFIED_REASON_C" ;;
  }

  dimension: dnsmpi_c {
    type: yesno
    sql: ${TABLE}."DNSMPI_C" ;;
  }

  dimension: do_not_call {
    type: yesno
    sql: ${TABLE}."DO_NOT_CALL" ;;
  }

  dimension: do_not_email_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
  }

  dimension: do_not_email_sales_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_EMAIL_SALES_C" ;;
  }

  dimension: do_not_mail_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_MAIL_C" ;;
  }

  dimension: do_not_sync_to_marketo_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_SYNC_TO_MARKETO_C" ;;
  }

  dimension_group: due_date_c {
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
    sql: ${TABLE}."DUE_DATE_C" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: email_bounced {
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
    sql: CAST(${TABLE}."EMAIL_BOUNCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: email_bounced_reason {
    type: string
    sql: ${TABLE}."EMAIL_BOUNCED_REASON" ;;
  }

  dimension: employee_contact_info_c {
    type: string
    sql: ${TABLE}."EMPLOYEE_CONTACT_INFO_C" ;;
  }

  dimension: employees_rage_x_c {
    type: string
    sql: ${TABLE}."EMPLOYEES_RAGE_X_C" ;;
  }

  dimension_group: engagement_date_c {
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
    sql: ${TABLE}."ENGAGEMENT_DATE_C" ;;
  }

  dimension: exp_ruby_how_heard_c {
    type: string
    sql: ${TABLE}."EXP_RUBY_HOW_HEARD_C" ;;
  }

  dimension: expecting_full_interview_c {
    type: yesno
    sql: ${TABLE}."EXPECTING_FULL_INTERVIEW_C" ;;
  }

  dimension: extension_c {
    type: string
    sql: ${TABLE}."EXTENSION_C" ;;
  }

  dimension: facebook_profile_c {
    type: string
    sql: ${TABLE}."FACEBOOK_PROFILE_C" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: feature_request_c {
    type: string
    sql: ${TABLE}."FEATURE_REQUEST_C" ;;
  }

  dimension_group: first_call_date {
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
    sql: CAST(${TABLE}."FIRST_CALL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
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

  dimension_group: first_email_date {
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
    sql: CAST(${TABLE}."FIRST_EMAIL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: free_chat_trial_c {
    type: yesno
    sql: ${TABLE}."FREE_CHAT_TRIAL_C" ;;
  }

  dimension: fun_facts_c {
    type: string
    sql: ${TABLE}."FUN_FACTS_C" ;;
  }

  dimension: gclid_c {
    type: string
    sql: ${TABLE}."GCLID_C" ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}."GEOCODE_ACCURACY" ;;
  }

  dimension: gh_cohort_c {
    type: string
    sql: ${TABLE}."GH_COHORT_C" ;;
  }

  dimension: handoff_contact_notes_c {
    type: string
    sql: ${TABLE}."HANDOFF_CONTACT_NOTES_C" ;;
  }

  dimension: handoff_notes_c {
    type: string
    sql: ${TABLE}."HANDOFF_NOTES_C" ;;
  }

  dimension: has_budget_c {
    type: yesno
    sql: ${TABLE}."HAS_BUDGET_C" ;;
  }

  dimension: has_need_c {
    type: yesno
    sql: ${TABLE}."HAS_NEED_C" ;;
  }

  dimension: has_opted_out_of_email {
    type: yesno
    sql: ${TABLE}."HAS_OPTED_OUT_OF_EMAIL" ;;
  }

  dimension: has_opted_out_of_fax {
    type: yesno
    sql: ${TABLE}."HAS_OPTED_OUT_OF_FAX" ;;
  }

  dimension: has_timeline_c {
    type: yesno
    sql: ${TABLE}."HAS_TIMELINE_C" ;;
  }

  dimension: has_viewed_sales_presentation_c {
    type: yesno
    sql: ${TABLE}."HAS_VIEWED_SALES_PRESENTATION_C" ;;
  }

  dimension: has_viewed_website_pricing_c {
    type: yesno
    sql: ${TABLE}."HAS_VIEWED_WEBSITE_PRICING_C" ;;
  }

  dimension: how_heard_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_C" ;;
  }

  dimension: how_heard_detail_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_DETAIL_C" ;;
  }

  dimension: i_have_read_the_terms_and_conditions_c {
    type: yesno
    sql: ${TABLE}."I_HAVE_READ_THE_TERMS_AND_CONDITIONS_C" ;;
  }

  dimension: individual_id {
    type: string
    sql: ${TABLE}."INDIVIDUAL_ID" ;;
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

  dimension: initial_contact_from_lead_pages_c {
    type: string
    sql: ${TABLE}."INITIAL_CONTACT_FROM_LEAD_PAGES_C" ;;
  }

  dimension: is_converted {
    type: yesno
    sql: ${TABLE}."IS_CONVERTED" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_unread_by_owner {
    type: yesno
    sql: ${TABLE}."IS_UNREAD_BY_OWNER" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_contact_id {
    type: string
    sql: ${TABLE}."JIGSAW_CONTACT_ID" ;;
  }

  dimension: key_decision_maker_c {
    type: yesno
    sql: ${TABLE}."KEY_DECISION_MAKER_C" ;;
  }

  dimension: kickstarter_c {
    type: string
    sql: ${TABLE}."KICKSTARTER_C" ;;
  }

  dimension_group: kickstarter_due_date_c {
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
    sql: ${TABLE}."KICKSTARTER_DUE_DATE_C" ;;
  }

  dimension: ks_sharepoint_id_c {
    type: string
    sql: ${TABLE}."KS_SHAREPOINT_ID_C" ;;
  }

  dimension: ks_sharepoint_modified_by_c {
    type: string
    sql: ${TABLE}."KS_SHAREPOINT_MODIFIED_BY_C" ;;
  }

  dimension_group: ks_sharepoint_modified_c {
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
    sql: ${TABLE}."KS_SHAREPOINT_MODIFIED_C" ;;
  }

  dimension: ks_to_sales_notes_c {
    type: string
    sql: ${TABLE}."KS_TO_SALES_NOTES_C" ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
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

  dimension_group: last_transfer {
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
    sql: ${TABLE}."LAST_TRANSFER_DATE" ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: lead_assignment_type_c {
    type: string
    sql: ${TABLE}."LEAD_ASSIGNMENT_TYPE_C" ;;
  }

  dimension: lead_recipient_c {
    type: string
    sql: ${TABLE}."LEAD_RECIPIENT_C" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: lead_source_detail_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_C" ;;
  }

  dimension: lead_source_detail_from_lead_pages_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_FROM_LEAD_PAGES_C" ;;
  }

  dimension: lead_source_detail_w_2_l_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_W_2_L_C" ;;
  }

  dimension: lead_source_for_mapping_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_FOR_MAPPING_C" ;;
  }

  dimension: lead_source_formula_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_FORMULA_C" ;;
  }

  dimension: lead_source_w_2_l_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_W_2_L_C" ;;
  }

  dimension: lean_data_a_2_b_account_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_A_2_B_ACCOUNT_C" ;;
  }

  dimension: lean_data_a_2_b_group_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_A_2_B_GROUP_C" ;;
  }

  dimension_group: lean_data_assigned_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_ASSIGNED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_ld_segment_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_LD_SEGMENT_C" ;;
  }

  dimension_group: lean_data_marketing_sys_created_date_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_MARKETING_SYS_CREATED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_matched_account_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_MATCHED_ACCOUNT_C" ;;
  }

  dimension: lean_data_matched_buyer_persona_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_MATCHED_BUYER_PERSONA_C" ;;
  }

  dimension: lean_data_matched_lead_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_MATCHED_LEAD_C" ;;
  }

  dimension: lean_data_modified_score_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_MODIFIED_SCORE_C" ;;
  }

  dimension: lean_data_reporting_matched_account_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_REPORTING_MATCHED_ACCOUNT_C" ;;
  }

  dimension_group: lean_data_reporting_timestamp_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_TIMESTAMP_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_router_status_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTER_STATUS_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: lean_data_routing_status_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_STATUS_C" ;;
  }

  dimension: lean_data_search_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SEARCH_C" ;;
  }

  dimension: lean_data_search_index_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SEARCH_INDEX_C" ;;
  }

  dimension: lean_data_status_info_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_STATUS_INFO_C" ;;
  }

  dimension: lean_data_tag_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_TAG_C" ;;
  }

  dimension: linked_in_profile_c {
    type: string
    sql: ${TABLE}."LINKED_IN_PROFILE_C" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: main_company_phone_number_c {
    type: string
    sql: ${TABLE}."MAIN_COMPANY_PHONE_NUMBER_C" ;;
  }

  dimension: marketing_fields_c {
    type: string
    sql: ${TABLE}."MARKETING_FIELDS_C" ;;
  }

  dimension: marketing_lead_status_c {
    type: string
    sql: ${TABLE}."MARKETING_LEAD_STATUS_C" ;;
  }

  dimension: marketo_cookie_c {
    type: string
    sql: ${TABLE}."MARKETO_COOKIE_C" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}."MIDDLE_NAME" ;;
  }

  dimension: missed_sla_c {
    type: yesno
    sql: ${TABLE}."MISSED_SLA_C" ;;
  }

  dimension_group: mkto_71_acquisition_date_c {
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
    sql: CAST(${TABLE}."MKTO_71_ACQUISITION_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mkto_71_acquisition_program_c {
    type: string
    sql: ${TABLE}."MKTO_71_ACQUISITION_PROGRAM_C" ;;
  }

  dimension: mkto_71_lead_score_c {
    type: number
    sql: ${TABLE}."MKTO_71_LEAD_SCORE_C" ;;
  }

  dimension_group: mkto_si_hide_date_c {
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
    sql: ${TABLE}."MKTO_SI_HIDE_DATE_C" ;;
  }

  dimension_group: mkto_si_last_interesting_moment_date_c {
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
    sql: CAST(${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mkto_si_last_interesting_moment_desc_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DESC_C" ;;
  }

  dimension: mkto_si_last_interesting_moment_source_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_SOURCE_C" ;;
  }

  dimension: mkto_si_last_interesting_moment_type_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_TYPE_C" ;;
  }

  dimension: mkto_si_msicontact_id_c {
    type: string
    sql: ${TABLE}."MKTO_SI_MSICONTACT_ID_C" ;;
  }

  dimension: mkto_si_priority_c {
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

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: most_recent_campaign_name_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_CAMPAIGN_NAME_C" ;;
  }

  dimension_group: most_recent_mql_c {
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
    sql: ${TABLE}."MOST_RECENT_MQL_C" ;;
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

  dimension: most_recent_resource_name_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_RESOURCE_NAME_C" ;;
  }

  dimension_group: most_recent_sal_c {
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
    sql: ${TABLE}."MOST_RECENT_SAL_C" ;;
  }

  dimension_group: most_recent_sql_c {
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
    sql: ${TABLE}."MOST_RECENT_SQL_C" ;;
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

  dimension: ms_apps_c {
    type: yesno
    sql: ${TABLE}."MS_APPS_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: net_prospex_id_c {
    type: string
    sql: ${TABLE}."NET_PROSPEX_ID_C" ;;
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

  dimension: notes_c {
    type: string
    sql: ${TABLE}."NOTES_C" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: nurture_c {
    type: yesno
    sql: ${TABLE}."NURTURE_C" ;;
  }

  dimension_group: nurture_date_c {
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
    sql: ${TABLE}."NURTURE_DATE_C" ;;
  }

  dimension: nurture_explanation_c {
    type: string
    sql: ${TABLE}."NURTURE_EXPLANATION_C" ;;
  }

  dimension: nurture_reason_c {
    type: string
    sql: ${TABLE}."NURTURE_REASON_C" ;;
  }

  dimension: nurture_status_c {
    type: string
    sql: ${TABLE}."NURTURE_STATUS_C" ;;
  }

  dimension: of_employees_c {
    type: string
    sql: ${TABLE}."OF_EMPLOYEES_C" ;;
  }

  dimension: of_employees_range_c {
    type: string
    sql: ${TABLE}."OF_EMPLOYEES_RANGE_C" ;;
  }

  dimension: olsa_how_heard_c {
    type: string
    sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
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

  dimension: original_campaign_name_c {
    type: string
    sql: ${TABLE}."ORIGINAL_CAMPAIGN_NAME_C" ;;
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

  dimension_group: original_ks_create_date_c {
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
    sql: ${TABLE}."ORIGINAL_KS_CREATE_DATE_C" ;;
  }

  dimension: original_ks_rep_c {
    type: string
    sql: ${TABLE}."ORIGINAL_KS_REP_C" ;;
  }

  dimension: original_lead_source_c {
    type: string
    sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_C" ;;
  }

  dimension: original_lead_source_detail_c {
    type: string
    sql: ${TABLE}."ORIGINAL_LEAD_SOURCE_DETAIL_C" ;;
  }

  dimension_group: original_mql_c {
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
    sql: ${TABLE}."ORIGINAL_MQL_C" ;;
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

  dimension: original_resource_name_c {
    type: string
    sql: ${TABLE}."ORIGINAL_RESOURCE_NAME_C" ;;
  }

  dimension_group: original_sal_c {
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
    sql: ${TABLE}."ORIGINAL_SAL_C" ;;
  }

  dimension_group: original_sql_c {
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
    sql: ${TABLE}."ORIGINAL_SQL_C" ;;
  }

  dimension: outbound_c {
    type: yesno
    sql: ${TABLE}."OUTBOUND_C" ;;
  }

  dimension: override_time_zone_c {
    type: yesno
    sql: ${TABLE}."OVERRIDE_TIME_ZONE_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: partnership_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_C" ;;
  }

  dimension: pc_2_nd_email_c {
    type: string
    sql: ${TABLE}."PC_2_ND_EMAIL_C" ;;
  }

  dimension: pc_account_executive_c {
    type: string
    sql: ${TABLE}."PC_ACCOUNT_EXECUTIVE_C" ;;
  }

  dimension: pc_actual_sales_volume_c {
    type: string
    sql: ${TABLE}."PC_ACTUAL_SALES_VOLUME_C" ;;
  }

  dimension: pc_affiliate_2_c {
    type: string
    sql: ${TABLE}."PC_AFFILIATE_2_C" ;;
  }

  dimension: pc_affiliate_c {
    type: string
    sql: ${TABLE}."PC_AFFILIATE_C" ;;
  }

  dimension: pc_annual_revenue_c {
    type: string
    sql: ${TABLE}."PC_ANNUAL_REVENUE_C" ;;
  }

  dimension: pc_chat_brand_c {
    type: string
    sql: ${TABLE}."PC_CHAT_BRAND_C" ;;
  }

  dimension: pc_contact_2_c {
    type: string
    sql: ${TABLE}."PC_CONTACT_2_C" ;;
  }

  dimension: pc_docs_c {
    type: string
    sql: ${TABLE}."PC_DOCS_C" ;;
  }

  dimension: pc_lead_ex_id_c {
    type: string
    sql: ${TABLE}."PC_LEAD_EX_ID_C" ;;
  }

  dimension: pc_lead_id_c {
    type: string
    sql: ${TABLE}."PC_LEAD_ID_C" ;;
  }

  dimension: pc_lead_number_c {
    type: string
    sql: ${TABLE}."PC_LEAD_NUMBER_C" ;;
  }

  dimension: pc_member_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PC_MEMBER_ID_C" ;;
  }

  dimension: pc_metro_area_c {
    type: string
    sql: ${TABLE}."PC_METRO_AREA_C" ;;
  }

  dimension: pc_offices_c {
    type: string
    sql: ${TABLE}."PC_OFFICES_C" ;;
  }

  dimension: pc_primary_sic_description_c {
    type: string
    sql: ${TABLE}."PC_PRIMARY_SIC_DESCRIPTION_C" ;;
  }

  dimension: pc_sdr_name_c {
    type: string
    sql: ${TABLE}."PC_SDR_NAME_C" ;;
  }

  dimension: pc_trade_show_details_c {
    type: string
    sql: ${TABLE}."PC_TRADE_SHOW_DETAILS_C" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: phone_number_c {
    type: string
    sql: ${TABLE}."PHONE_NUMBER_C" ;;
  }

  dimension: phone_provider_c {
    type: string
    sql: ${TABLE}."PHONE_PROVIDER_C" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: porting_requested_c {
    type: yesno
    sql: ${TABLE}."PORTING_REQUESTED_C" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: previous_nurture_explanation_c {
    type: string
    sql: ${TABLE}."PREVIOUS_NURTURE_EXPLANATION_C" ;;
  }

  dimension: previous_nurture_reason_c {
    type: string
    sql: ${TABLE}."PREVIOUS_NURTURE_REASON_C" ;;
  }

  dimension: primary_business_need_c {
    type: string
    sql: ${TABLE}."PRIMARY_BUSINESS_NEED_C" ;;
  }

  dimension: primary_industry_c {
    type: string
    sql: ${TABLE}."PRIMARY_INDUSTRY_C" ;;
  }

  dimension_group: prl_activation_date_c {
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
    sql: ${TABLE}."PRL_ACTIVATION_DATE_C" ;;
  }

  dimension: prl_id_c {
    type: string
    sql: ${TABLE}."PRL_ID_C" ;;
  }

  dimension: prl_id_number_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_ID_NUMBER_C" ;;
  }

  dimension: product_interest_c {
    type: string
    sql: ${TABLE}."PRODUCT_INTEREST_C" ;;
  }

  dimension: product_type_c {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE_C" ;;
  }

  dimension: promo_code_c {
    type: string
    sql: ${TABLE}."PROMO_CODE_C" ;;
  }

  dimension: prospect_c {
    type: yesno
    sql: ${TABLE}."PROSPECT_C" ;;
  }

  dimension_group: prospect_date_c {
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
    sql: ${TABLE}."PROSPECT_DATE_C" ;;
  }

  dimension: prospect_level_c {
    type: string
    sql: ${TABLE}."PROSPECT_LEVEL_C" ;;
  }

  dimension: proununciation_and_gender_c {
    type: string
    sql: ${TABLE}."PROUNUNCIATION_AND_GENDER_C" ;;
  }

  dimension: public_address_c {
    type: string
    sql: ${TABLE}."PUBLIC_ADDRESS_C" ;;
  }

  dimension: publishing_ruby_number_c {
    type: yesno
    sql: ${TABLE}."PUBLISHING_RUBY_NUMBER_C" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: rdnacadence_cadence_assignment_error_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_CADENCE_ASSIGNMENT_ERROR_C" ;;
  }

  dimension: rdnacadence_cadence_id_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_CADENCE_ID_C" ;;
  }

  dimension: rdnacadence_cadence_performed_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_CADENCE_PERFORMED_C" ;;
  }

  dimension: rdnacadence_current_generators_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_CURRENT_GENERATORS_C" ;;
  }

  dimension_group: rdnacadence_entrance_criteria_matched_date_c {
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
    sql: CAST(${TABLE}."RDNACADENCE_ENTRANCE_CRITERIA_MATCHED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: rdnacadence_is_activated_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_IS_ACTIVATED_C" ;;
  }

  dimension: rdnacadence_number_of_deferred_sequence_actions_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_DEFERRED_SEQUENCE_ACTIONS_C" ;;
  }

  dimension: rdnacadence_number_of_performed_sequence_actions_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_PERFORMED_SEQUENCE_ACTIONS_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_sent_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_SENT_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_to_opened_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_OPENED_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_to_reply_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_REPLY_C" ;;
  }

  dimension: rdnacadence_opened_sequence_email_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_OPENED_SEQUENCE_EMAIL_C" ;;
  }

  dimension: rdnacadence_priority_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_PRIORITY_C" ;;
  }

  dimension: rdnacadence_replied_to_sequence_email_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_REPLIED_TO_SEQUENCE_EMAIL_C" ;;
  }

  dimension: record_source_c {
    type: string
    sql: ${TABLE}."RECORD_SOURCE_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: referree_sfdc_account_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."REFERREE_SFDC_ACCOUNT_ID_C" ;;
  }

  dimension: referrer_sfdc_account_id_c {
    type: string
    sql: ${TABLE}."REFERRER_SFDC_ACCOUNT_ID_C" ;;
  }

  dimension: referring_email_c {
    type: string
    sql: ${TABLE}."REFERRING_EMAIL_C" ;;
  }

  dimension: referring_name_c {
    type: string
    sql: ${TABLE}."REFERRING_NAME_C" ;;
  }

  dimension: referring_url_c {
    type: string
    sql: ${TABLE}."REFERRING_URL_C" ;;
  }

  dimension: returning_client_c {
    type: yesno
    sql: ${TABLE}."RETURNING_CLIENT_C" ;;
  }

  dimension: revenue_c {
    type: string
    sql: ${TABLE}."REVENUE_C" ;;
  }

  dimension: ring_dna_web_lead_c {
    type: yesno
    sql: ${TABLE}."RING_DNA_WEB_LEAD_C" ;;
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

  dimension_group: ringdna_100_first_inbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_INBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
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

  dimension_group: ringdna_100_first_outbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_OUTBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
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

  dimension_group: ringdna_100_last_inbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_INBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
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

  dimension_group: ringdna_100_last_outbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_OUTBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ringdna_100_message_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_MESSAGE_ATTEMPTS_C" ;;
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

  dimension: ringdna_100_time_to_respond_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_TIME_TO_RESPOND_C" ;;
  }

  dimension: ringdna_107_ring_dna_web_lead_c {
    type: yesno
    sql: ${TABLE}."RINGDNA_107_RING_DNA_WEB_LEAD_C" ;;
  }

  dimension: ringdna_has_opted_out_of_sms_c {
    type: yesno
    sql: ${TABLE}."RINGDNA_HAS_OPTED_OUT_OF_SMS_C" ;;
  }

  dimension: rs_lifetime_customer_value_c {
    type: number
    sql: ${TABLE}."RS_LIFETIME_CUSTOMER_VALUE_C" ;;
  }

  dimension: rs_monthly_plan_c {
    type: number
    sql: ${TABLE}."RS_MONTHLY_PLAN_C" ;;
  }

  dimension: rs_roi_c {
    type: number
    sql: ${TABLE}."RS_ROI_C" ;;
  }

  dimension: sales_after_hours_c {
    type: yesno
    sql: ${TABLE}."SALES_AFTER_HOURS_C" ;;
  }

  dimension: sales_cycle_stage_c {
    type: string
    sql: ${TABLE}."SALES_CYCLE_STAGE_C" ;;
  }

  dimension: sales_how_heard_c {
    type: string
    sql: ${TABLE}."SALES_HOW_HEARD_C" ;;
  }

  dimension: sales_how_heard_note_c {
    type: string
    sql: ${TABLE}."SALES_HOW_HEARD_NOTE_C" ;;
  }

  dimension: sales_notes_for_kickstarter_c {
    type: string
    sql: ${TABLE}."SALES_NOTES_FOR_KICKSTARTER_C" ;;
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

  dimension: sales_sharepoint_forwarding_c {
    type: string
    sql: ${TABLE}."SALES_SHAREPOINT_FORWARDING_C" ;;
  }

  dimension: sales_sharepoint_id_c {
    type: string
    sql: ${TABLE}."SALES_SHAREPOINT_ID_C" ;;
  }

  dimension: sales_sharepoint_modified_by_c {
    type: string
    sql: ${TABLE}."SALES_SHAREPOINT_MODIFIED_BY_C" ;;
  }

  dimension_group: sales_sharepoint_modified_c {
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
    sql: ${TABLE}."SALES_SHAREPOINT_MODIFIED_C" ;;
  }

  dimension: sales_sharepoint_owner_c {
    type: string
    sql: ${TABLE}."SALES_SHAREPOINT_OWNER_C" ;;
  }

  dimension: sales_sharepoint_special_pricing_c {
    type: string
    sql: ${TABLE}."SALES_SHAREPOINT_SPECIAL_PRICING_C" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."SALUTATION" ;;
  }

  dimension: sdr_c {
    type: string
    sql: ${TABLE}."SDR_C" ;;
  }

  dimension: sdr_checked_c {
    type: yesno
    sql: ${TABLE}."SDR_CHECKED_C" ;;
  }

  dimension: search_term_c {
    type: string
    sql: ${TABLE}."SEARCH_TERM_C" ;;
  }

  dimension: service_use_c {
    type: string
    sql: ${TABLE}."SERVICE_USE_C" ;;
  }

  dimension: sic_code_c {
    type: string
    sql: ${TABLE}."SIC_CODE_C" ;;
  }

  dimension: sic_description_c {
    type: string
    sql: ${TABLE}."SIC_DESCRIPTION_C" ;;
  }

  dimension: snappy_setup_c {
    type: string
    sql: ${TABLE}."SNAPPY_SETUP_C" ;;
  }

  dimension: special_pricing_deals_c {
    type: string
    sql: ${TABLE}."SPECIAL_PRICING_DEALS_C" ;;
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

  dimension_group: sre_c {
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
    sql: ${TABLE}."SRE_C" ;;
  }

  dimension: stage_of_research_c {
    type: string
    sql: ${TABLE}."STAGE_OF_RESEARCH_C" ;;
  }

  dimension: start_date_in_prl_c {
    type: yesno
    sql: ${TABLE}."START_DATE_IN_PRL_C" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: status_c {
    type: string
    sql: ${TABLE}."STATUS_C" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."STREET" ;;
  }

  dimension: sub_industry_c {
    type: string
    sql: ${TABLE}."SUB_INDUSTRY_C" ;;
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

  dimension: test_c {
    type: yesno
    sql: ${TABLE}."TEST_C" ;;
  }

  dimension: time_zone_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_C" ;;
  }

  dimension: timeline_c {
    type: string
    sql: ${TABLE}."TIMELINE_C" ;;
  }

  dimension_group: timeline_date_c {
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
    sql: ${TABLE}."TIMELINE_DATE_C" ;;
  }

  dimension: timeline_dnu_c {
    type: string
    sql: ${TABLE}."TIMELINE_DNU_C" ;;
  }

  dimension: timeline_score_c {
    type: number
    sql: ${TABLE}."TIMELINE_SCORE_C" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: utm_campaign_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_C" ;;
  }

  dimension: utm_campaign_history_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_HISTORY_C" ;;
  }

  dimension: utm_campaign_most_recent_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_MOST_RECENT_C" ;;
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

  dimension: verify_all_c {
    type: yesno
    sql: ${TABLE}."VERIFY_ALL_C" ;;
  }

  dimension: wait_to_charge_c {
    type: yesno
    sql: ${TABLE}."WAIT_TO_CHARGE_C" ;;
  }

  dimension: web_form_comments_c {
    type: string
    sql: ${TABLE}."WEB_FORM_COMMENTS_C" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  dimension: website_c {
    type: string
    sql: ${TABLE}."WEBSITE_C" ;;
  }

  dimension: workflow_trigger_c {
    type: yesno
    sql: ${TABLE}."WORKFLOW_TRIGGER_C" ;;
  }

  dimension: zombie_reason_c {
    type: string
    sql: ${TABLE}."ZOMBIE_REASON_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      last_name,
      first_name,
      middle_name,
      lead_history.count
    ]
  }
}
