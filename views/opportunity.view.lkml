view: opportunity {
  sql_table_name: "SALESFORCE"."OPPORTUNITY"
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

  dimension: about_company_c {
    type: string
    sql: ${TABLE}."ABOUT_COMPANY_C" ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: activity_metric_id {
    type: string
    sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
  }

  dimension: actual_chat_volume_pm_c {
    type: number
    sql: ${TABLE}."ACTUAL_CHAT_VOLUME_PM_C" ;;
  }

  dimension: actual_close_date_checkbox_c {
    type: yesno
    sql: ${TABLE}."ACTUAL_CLOSE_DATE_CHECKBOX_C" ;;
  }

  dimension: added_cof_to_prl_c {
    type: yesno
    sql: ${TABLE}."ADDED_COF_TO_PRL_C" ;;
  }

  dimension: additional_phone_provider_c {
    type: yesno
    sql: ${TABLE}."ADDITIONAL_PHONE_PROVIDER_C" ;;
  }

  dimension: affiliate_group_c {
    type: string
    sql: ${TABLE}."AFFILIATE_GROUP_C" ;;
  }

  dimension: after_hours_c {
    type: string
    sql: ${TABLE}."AFTER_HOURS_C" ;;
  }

  dimension: agent_email_c {
    type: string
    sql: ${TABLE}."AGENT_EMAIL_C" ;;
  }

  dimension: agent_name_c {
    type: string
    sql: ${TABLE}."AGENT_NAME_C" ;;
  }

  dimension: agreed_to_t_c_c {
    type: yesno
    sql: ${TABLE}."AGREED_TO_T_C_C" ;;
  }

  dimension_group: ambition_timestamp_for_unittest_c {
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
    sql: CAST(${TABLE}."AMBITION_TIMESTAMP_FOR_UNITTEST_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: anticipated_chat_volume_pm_c {
    type: number
    sql: ${TABLE}."ANTICIPATED_CHAT_VOLUME_PM_C" ;;
  }

  dimension: appointment_types_c {
    type: string
    sql: ${TABLE}."APPOINTMENT_TYPES_C" ;;
  }

  dimension: asked_about_hipaa_c {
    type: yesno
    sql: ${TABLE}."ASKED_ABOUT_HIPAA_C" ;;
  }

  dimension: attorney_questions_c {
    type: string
    sql: ${TABLE}."ATTORNEY_QUESTIONS_C" ;;
  }

  dimension: better_growth_c {
    type: yesno
    sql: ${TABLE}."BETTER_GROWTH_C" ;;
  }

  dimension: bilingual_call_routing_c {
    type: string
    sql: ${TABLE}."BILINGUAL_CALL_ROUTING_C" ;;
  }

  dimension: billing_c {
    type: string
    sql: ${TABLE}."BILLING_C" ;;
  }

  dimension: billing_contact_c {
    type: string
    sql: ${TABLE}."BILLING_CONTACT_C" ;;
  }

  dimension: billing_email_c {
    type: string
    sql: ${TABLE}."BILLING_EMAIL_C" ;;
  }

  dimension: billing_usage_upgrades_downgrades_c {
    type: yesno
    sql: ${TABLE}."BILLING_USAGE_UPGRADES_DOWNGRADES_C" ;;
  }

  dimension: blockers_c {
    type: string
    sql: ${TABLE}."BLOCKERS_C" ;;
  }

  dimension: budget_c {
    type: number
    sql: ${TABLE}."BUDGET_C" ;;
  }

  dimension: budget_confirmed_c {
    type: yesno
    sql: ${TABLE}."BUDGET_CONFIRMED_C" ;;
  }

  dimension: business_hours_c {
    type: string
    sql: ${TABLE}."BUSINESS_HOURS_C" ;;
  }

  dimension: calendly_c {
    type: yesno
    sql: ${TABLE}."CALENDLY_C" ;;
  }

  dimension_group: calibration_begins_c {
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
    sql: ${TABLE}."CALIBRATION_BEGINS_C" ;;
  }

  dimension: call_forwarding_c {
    type: string
    sql: ${TABLE}."CALL_FORWARDING_C" ;;
  }

  dimension: call_handling_directory_c {
    type: string
    sql: ${TABLE}."CALL_HANDLING_DIRECTORY_C" ;;
  }

  dimension: call_handling_individuals_c {
    type: string
    sql: ${TABLE}."CALL_HANDLING_INDIVIDUALS_C" ;;
  }

  dimension: call_handling_misc_c {
    type: string
    sql: ${TABLE}."CALL_HANDLING_MISC_C" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CAMPAIGN_ID" ;;
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

  dimension: cancel_reason_c {
    type: string
    sql: ${TABLE}."CANCEL_REASON_C" ;;
  }

  dimension: captcha_complex_verification_c {
    type: string
    sql: ${TABLE}."CAPTCHA_COMPLEX_VERIFICATION_C" ;;
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

  dimension: chat_brand_c {
    type: string
    sql: ${TABLE}."CHAT_BRAND_C" ;;
  }

  dimension: chatbot_eligible_c {
    type: string
    sql: ${TABLE}."CHATBOT_ELIGIBLE_C" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: close_date_checkbox_c {
    type: yesno
    sql: ${TABLE}."CLOSE_DATE_CHECKBOX_C" ;;
  }

  dimension_group: close_date_time_c {
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
    sql: CAST(${TABLE}."CLOSE_DATE_TIME_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: collect_calls_c {
    type: string
    sql: ${TABLE}."COLLECT_CALLS_C" ;;
  }

  dimension_group: commission_date_period_c {
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
    sql: ${TABLE}."COMMISSION_DATE_PERIOD_C" ;;
  }

  dimension: company_name_c {
    type: string
    sql: ${TABLE}."COMPANY_NAME_C" ;;
  }

  dimension: complex_customization_c {
    type: yesno
    sql: ${TABLE}."COMPLEX_CUSTOMIZATION_C" ;;
  }

  dimension: contact_c {
    type: string
    sql: ${TABLE}."CONTACT_C" ;;
  }

  dimension: contact_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}."CONTRACT_ID" ;;
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

  dimension: customer_loyalty_followup_c {
    type: yesno
    sql: ${TABLE}."CUSTOMER_LOYALTY_FOLLOWUP_C" ;;
  }

  dimension_group: date_of_next_action_c {
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
    sql: ${TABLE}."DATE_OF_NEXT_ACTION_C" ;;
  }

  dimension: daytime_vm_c {
    type: string
    sql: ${TABLE}."DAYTIME_VM_C" ;;
  }

  dimension: delayed_deployment_c {
    type: yesno
    sql: ${TABLE}."DELAYED_DEPLOYMENT_C" ;;
  }

  dimension_group: delayed_deployment_new_target_date_c {
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
    sql: ${TABLE}."DELAYED_DEPLOYMENT_NEW_TARGET_DATE_C" ;;
  }

  dimension: delayed_deployment_reason_c {
    type: string
    sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_C" ;;
  }

  dimension: delayed_deployment_reason_notes_c {
    type: string
    sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_NOTES_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: did_the_partner_bring_us_the_lead_c {
    type: string
    sql: ${TABLE}."DID_THE_PARTNER_BRING_US_THE_LEAD_C" ;;
  }

  dimension: discount_c {
    type: string
    sql: ${TABLE}."DISCOUNT_C" ;;
  }

  dimension: discovery_completed_c {
    type: yesno
    sql: ${TABLE}."DISCOVERY_COMPLETED_C" ;;
  }

  dimension: do_not_email_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
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

  dimension: employee_contact_information_c {
    type: string
    sql: ${TABLE}."EMPLOYEE_CONTACT_INFORMATION_C" ;;
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

  dimension: estimated_monthly_revenue_c {
    type: number
    sql: ${TABLE}."ESTIMATED_MONTHLY_REVENUE_C" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."EXPECTED_REVENUE" ;;
  }

  dimension: expecting_full_interview_c {
    type: yesno
    sql: ${TABLE}."EXPECTING_FULL_INTERVIEW_C" ;;
  }

  dimension: extended_hours_c {
    type: string
    sql: ${TABLE}."EXTENDED_HOURS_C" ;;
  }

  dimension: facebook_chat_c {
    type: yesno
    sql: ${TABLE}."FACEBOOK_CHAT_C" ;;
  }

  dimension: fax_number_c {
    type: string
    sql: ${TABLE}."FAX_NUMBER_C" ;;
  }

  dimension: fb_project_created_c {
    type: yesno
    sql: ${TABLE}."FB_PROJECT_CREATED_C" ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}."FISCAL" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FISCAL_QUARTER" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension_group: followup_date_c {
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
    sql: CAST(${TABLE}."FOLLOWUP_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: followup_notes_c {
    type: string
    sql: ${TABLE}."FOLLOWUP_NOTES_C" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY_NAME" ;;
  }

  dimension: forwarding_assistance_c {
    type: yesno
    sql: ${TABLE}."FORWARDING_ASSISTANCE_C" ;;
  }

  dimension: forwarding_followup_c {
    type: yesno
    sql: ${TABLE}."FORWARDING_FOLLOWUP_C" ;;
  }

  dimension: forwarding_number_c {
    type: string
    sql: ${TABLE}."FORWARDING_NUMBER_C" ;;
  }

  dimension: forwarding_phone_company_c {
    type: string
    sql: ${TABLE}."FORWARDING_PHONE_COMPANY_C" ;;
  }

  dimension_group: free_trial_end_date_c {
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
    sql: ${TABLE}."FREE_TRIAL_END_DATE_C" ;;
  }

  dimension_group: free_trial_start_c {
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
    sql: CAST(${TABLE}."FREE_TRIAL_START_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: gather_fields_before_xfr_c {
    type: string
    sql: ${TABLE}."GATHER_FIELDS_BEFORE_XFR_C" ;;
  }

  dimension: gclid_c {
    type: string
    sql: ${TABLE}."GCLID_C" ;;
  }

  dimension: gmc_project_created_c {
    type: yesno
    sql: ${TABLE}."GMC_PROJECT_CREATED_C" ;;
  }

  dimension: google_messenger_chat_c {
    type: yesno
    sql: ${TABLE}."GOOGLE_MESSENGER_CHAT_C" ;;
  }

  dimension: greeting_c {
    type: string
    sql: ${TABLE}."GREETING_C" ;;
  }

  dimension: handoff_contact_notes_c {
    type: string
    sql: ${TABLE}."HANDOFF_CONTACT_NOTES_C" ;;
  }

  dimension: handoff_notes_c {
    type: string
    sql: ${TABLE}."HANDOFF_NOTES_C" ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}."HAS_OPEN_ACTIVITY" ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}."HAS_OPPORTUNITY_LINE_ITEM" ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}."HAS_OVERDUE_TASK" ;;
  }

  dimension: how_heard_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_C" ;;
  }

  dimension: how_heard_detail_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_DETAIL_C" ;;
  }

  dimension: initial_contact_c {
    type: string
    sql: ${TABLE}."INITIAL_CONTACT_C" ;;
  }

  dimension: interviewed_c {
    type: string
    sql: ${TABLE}."INTERVIEWED_C" ;;
  }

  dimension: interviewer_c {
    type: string
    sql: ${TABLE}."INTERVIEWER_C" ;;
  }

  dimension: interviewer_ks_c {
    type: string
    sql: ${TABLE}."INTERVIEWER_KS_C" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IS_WON" ;;
  }

  dimension: kc_opportunity_stage_c {
    type: string
    sql: ${TABLE}."KC_OPPORTUNITY_STAGE_C" ;;
  }

  dimension_group: kickstarter_created_date_c {
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
    sql: ${TABLE}."KICKSTARTER_CREATED_DATE_C" ;;
  }

  dimension: kickstarter_status_c {
    type: string
    sql: ${TABLE}."KICKSTARTER_STATUS_C" ;;
  }

  dimension: ks_how_heard_c {
    type: string
    sql: ${TABLE}."KS_HOW_HEARD_C" ;;
  }

  dimension_group: ks_started_c {
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
    sql: ${TABLE}."KS_STARTED_C" ;;
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

  dimension: last_amount_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_AMOUNT_CHANGED_HISTORY_ID" ;;
  }

  dimension: last_close_date_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_CLOSE_DATE_CHANGED_HISTORY_ID" ;;
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

  dimension: lead_number_c {
    type: string
    sql: ${TABLE}."LEAD_NUMBER_C" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: lead_source_detail_opp_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_OPP_C" ;;
  }

  dimension: lead_source_detail_opportunity_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_OPPORTUNITY_C" ;;
  }

  dimension: lead_source_details_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAILS_C" ;;
  }

  dimension: lead_source_formula_opp_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_FORMULA_OPP_C" ;;
  }

  dimension: lead_source_reports_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_REPORTS_C" ;;
  }

  dimension: lead_status_c {
    type: string
    sql: ${TABLE}."LEAD_STATUS_C" ;;
  }

  dimension: lean_data_days_in_stage_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_DAYS_IN_STAGE_C" ;;
  }

  dimension: lean_data_order_number_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ORDER_NUMBER_C" ;;
  }

  dimension_group: lean_data_reporting_last_run_date_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_RUN_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_reporting_opportunity_source_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_REPORTING_OPPORTUNITY_SOURCE_C" ;;
  }

  dimension: lean_data_reporting_total_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_won_number_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_REPORTING_WON_NUMBER_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: live_transfer_c {
    type: yesno
    sql: ${TABLE}."LIVE_TRANSFER_C" ;;
  }

  dimension: loads_appointment_type_c {
    type: yesno
    sql: ${TABLE}."LOADS_APPOINTMENT_TYPE_C" ;;
  }

  dimension: lost_explanation_c {
    type: string
    sql: ${TABLE}."LOST_EXPLANATION_C" ;;
  }

  dimension: lost_reason_c {
    type: string
    sql: ${TABLE}."LOST_REASON_C" ;;
  }

  dimension: may_return_c {
    type: yesno
    sql: ${TABLE}."MAY_RETURN_C" ;;
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

  dimension: ms_apps_c {
    type: yesno
    sql: ${TABLE}."MS_APPS_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: name_of_bp_c {
    type: string
    sql: ${TABLE}."NAME_OF_BP_C" ;;
  }

  dimension: name_of_rp_c {
    type: string
    sql: ${TABLE}."NAME_OF_RP_C" ;;
  }

  dimension_group: needs_analysis_date_c {
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
    sql: CAST(${TABLE}."NEEDS_ANALYSIS_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NEXT_STEP" ;;
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

  dimension: number_of_followups_c {
    type: string
    sql: ${TABLE}."NUMBER_OF_FOLLOWUPS_C" ;;
  }

  dimension: number_of_users_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_USERS_C" ;;
  }

  dimension: office_call_connect_c {
    type: yesno
    sql: ${TABLE}."OFFICE_CALL_CONNECT_C" ;;
  }

  dimension: olsa_how_heard_c {
    type: string
    sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
  }

  dimension_group: onboarding_start_c {
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
    sql: CAST(${TABLE}."ONBOARDING_START_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: opportunity_close_date_c {
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
    sql: CAST(${TABLE}."OPPORTUNITY_CLOSE_DATE_C" AS TIMESTAMP_NTZ) ;;
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

  dimension: owner_c {
    type: string
    sql: ${TABLE}."OWNER_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: partner_c {
    type: string
    sql: ${TABLE}."PARTNER_C" ;;
  }

  dimension: partnership_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_C" ;;
  }

  dimension: partnership_discount_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_DISCOUNT_C" ;;
  }

  dimension: partnership_dollars_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_DOLLARS_C" ;;
  }

  dimension: partnership_percent_c {
    type: string
    sql: ${TABLE}."PARTNERSHIP_PERCENT_C" ;;
  }

  dimension: pc_account_executive_c {
    type: string
    sql: ${TABLE}."PC_ACCOUNT_EXECUTIVE_C" ;;
  }

  dimension: pc_opportunity_id_c {
    type: string
    sql: ${TABLE}."PC_OPPORTUNITY_ID_C" ;;
  }

  dimension: phone_provider_c {
    type: string
    sql: ${TABLE}."PHONE_PROVIDER_C" ;;
  }

  dimension: plan_c {
    type: string
    sql: ${TABLE}."PLAN_C" ;;
  }

  dimension: plan_level_c {
    type: string
    sql: ${TABLE}."PLAN_LEVEL_C" ;;
  }

  dimension: porting_requested_c {
    type: yesno
    sql: ${TABLE}."PORTING_REQUESTED_C" ;;
  }

  dimension: preferred_area_code_c {
    type: string
    sql: ${TABLE}."PREFERRED_AREA_CODE_C" ;;
  }

  dimension: previous_call_forwarding_c {
    type: yesno
    sql: ${TABLE}."PREVIOUS_CALL_FORWARDING_C" ;;
  }

  dimension: pricebook_2_id {
    type: string
    sql: ${TABLE}."PRICEBOOK_2_ID" ;;
  }

  dimension: primary_business_need_c {
    type: string
    sql: ${TABLE}."PRIMARY_BUSINESS_NEED_C" ;;
  }

  dimension: primary_onboarding_c {
    type: string
    sql: ${TABLE}."PRIMARY_ONBOARDING_C" ;;
  }

  dimension: prl_address_c {
    type: string
    sql: ${TABLE}."PRL_ADDRESS_C" ;;
  }

  dimension: prl_id_number_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_ID_NUMBER_C" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: product_c {
    type: string
    sql: ${TABLE}."PRODUCT_C" ;;
  }

  dimension: product_interest_c {
    type: string
    sql: ${TABLE}."PRODUCT_INTEREST_C" ;;
  }

  dimension: product_type_c {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE_C" ;;
  }

  dimension: programmer_c {
    type: string
    sql: ${TABLE}."PROGRAMMER_C" ;;
  }

  dimension: project_created_c {
    type: yesno
    sql: ${TABLE}."PROJECT_CREATED_C" ;;
  }

  dimension: promo_code_c {
    type: string
    sql: ${TABLE}."PROMO_CODE_C" ;;
  }

  dimension: pronunication_and_gender_c {
    type: string
    sql: ${TABLE}."PRONUNICATION_AND_GENDER_C" ;;
  }

  dimension_group: proposal_date_c {
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
    sql: CAST(${TABLE}."PROPOSAL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: public_address_c {
    type: string
    sql: ${TABLE}."PUBLIC_ADDRESS_C" ;;
  }

  dimension: public_email_c {
    type: string
    sql: ${TABLE}."PUBLIC_EMAIL_C" ;;
  }

  dimension: published_s_c {
    type: string
    sql: ${TABLE}."PUBLISHED_S_C" ;;
  }

  dimension: publishing_ruby_number_c {
    type: yesno
    sql: ${TABLE}."PUBLISHING_RUBY_NUMBER_C" ;;
  }

  dimension: push_counter_c {
    type: number
    sql: ${TABLE}."PUSH_COUNTER_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: referral_status_c {
    type: string
    sql: ${TABLE}."REFERRAL_STATUS_C" ;;
  }

  dimension: required_fields_c {
    type: string
    sql: ${TABLE}."REQUIRED_FIELDS_C" ;;
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

  dimension: roi_analysis_completed_c {
    type: yesno
    sql: ${TABLE}."ROI_ANALYSIS_COMPLETED_C" ;;
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

  dimension_group: scheduling_beta_approved_c {
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
    sql: CAST(${TABLE}."SCHEDULING_BETA_APPROVED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: scheduling_beta_c {
    type: yesno
    sql: ${TABLE}."SCHEDULING_BETA_C" ;;
  }

  dimension_group: scheduling_beta_declined_c {
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
    sql: CAST(${TABLE}."SCHEDULING_BETA_DECLINED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: scheduling_beta_notes_c {
    type: string
    sql: ${TABLE}."SCHEDULING_BETA_NOTES_C" ;;
  }

  dimension: scheduling_beta_status_c {
    type: string
    sql: ${TABLE}."SCHEDULING_BETA_STATUS_C" ;;
  }

  dimension: scheduling_platform_name_c {
    type: string
    sql: ${TABLE}."SCHEDULING_PLATFORM_NAME_C" ;;
  }

  dimension: scheduling_url_c {
    type: string
    sql: ${TABLE}."SCHEDULING_URL_C" ;;
  }

  dimension: sdr_c {
    type: string
    sql: ${TABLE}."SDR_C" ;;
  }

  dimension: service_use_c {
    type: string
    sql: ${TABLE}."SERVICE_USE_C" ;;
  }

  dimension: setup_name_c {
    type: string
    sql: ${TABLE}."SETUP_NAME_C" ;;
  }

  dimension: should_this_partner_get_full_credit_c {
    type: yesno
    sql: ${TABLE}."SHOULD_THIS_PARTNER_GET_FULL_CREDIT_C" ;;
  }

  dimension: snappy_c {
    type: string
    sql: ${TABLE}."SNAPPY_C" ;;
  }

  dimension: snappy_setup_c {
    type: string
    sql: ${TABLE}."SNAPPY_SETUP_C" ;;
  }

  dimension_group: sold_date_c {
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
    sql: CAST(${TABLE}."SOLD_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: special_outs_toc_msg_gathers_c {
    type: string
    sql: ${TABLE}."SPECIAL_OUTS_TOC_MSG_GATHERS_C" ;;
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

  dimension: ssi_collection_c {
    type: string
    sql: ${TABLE}."SSI_COLLECTION_C" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: start_up_amount_c {
    type: number
    sql: ${TABLE}."START_UP_AMOUNT_C" ;;
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

  dimension: success_with_ruby_c {
    type: string
    sql: ${TABLE}."SUCCESS_WITH_RUBY_C" ;;
  }

  dimension: success_with_ruby_cs_c {
    type: string
    sql: ${TABLE}."SUCCESS_WITH_RUBY_CS_C" ;;
  }

  dimension: survey_email_c {
    type: string
    sql: ${TABLE}."SURVEY_EMAIL_C" ;;
  }

  dimension: synced_quote_id {
    type: string
    sql: ${TABLE}."SYNCED_QUOTE_ID" ;;
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

  dimension: temporary_service_c {
    type: yesno
    sql: ${TABLE}."TEMPORARY_SERVICE_C" ;;
  }

  dimension: terms_and_conditions_c {
    type: string
    sql: ${TABLE}."TERMS_AND_CONDITIONS_C" ;;
  }

  dimension: time_zone_adjustability_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_ADJUSTABILITY_C" ;;
  }

  dimension: time_zone_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_C" ;;
  }

  dimension: time_zone_ks_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_KS_C" ;;
  }

  dimension_group: timeline_c {
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
    sql: ${TABLE}."TIMELINE_C" ;;
  }

  dimension: tod_answering_c {
    type: string
    sql: ${TABLE}."TOD_ANSWERING_C" ;;
  }

  dimension: total_chat_volume_pm_c {
    type: number
    sql: ${TABLE}."TOTAL_CHAT_VOLUME_PM_C" ;;
  }

  dimension: total_opportunity_quantity {
    type: number
    sql: ${TABLE}."TOTAL_OPPORTUNITY_QUANTITY" ;;
  }

  dimension: trade_show_details_c {
    type: string
    sql: ${TABLE}."TRADE_SHOW_DETAILS_C" ;;
  }

  dimension: trial_length_c {
    type: string
    sql: ${TABLE}."TRIAL_LENGTH_C" ;;
  }

  dimension: two_month_followup_c {
    type: yesno
    sql: ${TABLE}."TWO_MONTH_FOLLOWUP_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: type_c {
    type: string
    sql: ${TABLE}."TYPE_C" ;;
  }

  dimension: verify_all_c {
    type: yesno
    sql: ${TABLE}."VERIFY_ALL_C" ;;
  }

  dimension: wait_to_charge_c {
    type: yesno
    sql: ${TABLE}."WAIT_TO_CHARGE_C" ;;
  }

  dimension: wants_calendly_c {
    type: yesno
    sql: ${TABLE}."WANTS_CALENDLY_C" ;;
  }

  dimension: wants_extended_hours_c {
    type: yesno
    sql: ${TABLE}."WANTS_EXTENDED_HOURS_C" ;;
  }

  dimension: wants_mobile_c {
    type: yesno
    sql: ${TABLE}."WANTS_MOBILE_C" ;;
  }

  dimension: wants_scheduling_c {
    type: yesno
    sql: ${TABLE}."WANTS_SCHEDULING_C" ;;
  }

  dimension: wants_to_port_c {
    type: yesno
    sql: ${TABLE}."WANTS_TO_PORT_C" ;;
  }

  dimension: wc_project_created_c {
    type: yesno
    sql: ${TABLE}."WC_PROJECT_CREATED_C" ;;
  }

  dimension: website_chat_c {
    type: yesno
    sql: ${TABLE}."WEBSITE_CHAT_C" ;;
  }

  dimension: website_ks_c {
    type: string
    sql: ${TABLE}."WEBSITE_KS_C" ;;
  }

  dimension: who_accepted_t_c_c {
    type: string
    sql: ${TABLE}."WHO_ACCEPTED_T_C_C" ;;
  }

  dimension: zombie_c {
    type: yesno
    sql: ${TABLE}."ZOMBIE_C" ;;
  }

  dimension: zombie_reason_c {
    type: string
    sql: ${TABLE}."ZOMBIE_REASON_C" ;;
  }

  dimension: zombie_reason_depcracated_c {
    type: string
    sql: ${TABLE}."ZOMBIE_REASON_DEPCRACATED_C" ;;
  }

  dimension: zombie_reason_notes_c {
    type: string
    sql: ${TABLE}."ZOMBIE_REASON_NOTES_C" ;;
  }

  dimension: zqu_current_generators_c {
    type: string
    sql: ${TABLE}."ZQU_CURRENT_GENERATORS_C" ;;
  }

  dimension: zqu_delivery_installation_status_c {
    type: string
    sql: ${TABLE}."ZQU_DELIVERY_INSTALLATION_STATUS_C" ;;
  }

  dimension: zqu_main_competitors_c {
    type: string
    sql: ${TABLE}."ZQU_MAIN_COMPETITORS_C" ;;
  }

  dimension: zqu_order_number_c {
    type: string
    sql: ${TABLE}."ZQU_ORDER_NUMBER_C" ;;
  }

  dimension: zqu_tracking_number_c {
    type: string
    sql: ${TABLE}."ZQU_TRACKING_NUMBER_C" ;;
  }

  dimension: zqu_zuora_config_c {
    type: string
    sql: ${TABLE}."ZQU_ZUORA_CONFIG_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      stage_name,
      forecast_category_name,
      name,
      account.referrer_sfdc_account_id_c,
      account.name,
      contact.assistant_name,
      contact.last_name,
      contact.name,
      contact.middle_name,
      contact.first_name,
      contact.id
    ]
  }
}
