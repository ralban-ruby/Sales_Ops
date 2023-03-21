view: opportunity {
    derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.OPPORTUNITY WHERE IS_DELETED <> 1
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: id {
      type: string
      sql: ${TABLE}."ID" ;;
    }

    dimension: is_deleted {
      type: yesno
      sql: ${TABLE}."IS_DELETED" ;;
    }

    dimension: same_day_close {
      label: "Same Day Close"
      type: number
      case: {
        when: {
          sql: ${lead_create_date}=${close_date_time_c_date} AND ${stage_name} = 'Closed Won' ;;
          label: "1"
        }
        else: "0"
      }
    }

    dimension: lead_create_date {
      label: "Lead Create Date"
      type: date
      sql: DATEADD(DAY,1,${lead.created_date_date}) ;;
    }

    dimension: account_id {
      type: string
      sql: ${TABLE}."ACCOUNT_ID" ;;
    }

    dimension: record_type_id {
      type: string
      sql: ${TABLE}."RECORD_TYPE_ID" ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}."NAME" ;;
    }

    dimension: description {
      type: string
      sql: ${TABLE}."DESCRIPTION" ;;
    }

    dimension: stage_name {
      type: string
      sql: ${TABLE}."STAGE_NAME" ;;
    }

    dimension: amount {
      type: number
      sql: ${TABLE}."AMOUNT" ;;
    }

    dimension: probability {
      type: number
      sql: ${TABLE}."PROBABILITY" ;;
    }

    dimension: close_date {
      type: date
      sql: ${TABLE}."CLOSE_DATE" ;;
    }

    dimension: type {
      type: string
      sql: ${TABLE}."TYPE" ;;
    }

    dimension: next_step {
      type: string
      sql: ${TABLE}."NEXT_STEP" ;;
    }

    dimension: lead_source {
      type: string
      sql: ${TABLE}."LEAD_SOURCE" ;;
    }

    dimension: is_closed {
      type: yesno
      sql: ${TABLE}."IS_CLOSED" ;;
    }

    dimension: is_won {
      type: yesno
      sql: ${TABLE}."IS_WON" ;;
    }

    dimension: forecast_category {
      type: string
      sql: ${TABLE}."FORECAST_CATEGORY" ;;
    }

    dimension: forecast_category_name {
      type: string
      sql: ${TABLE}."FORECAST_CATEGORY_NAME" ;;
    }

    dimension: campaign_id {
      type: string
      sql: ${TABLE}."CAMPAIGN_ID" ;;
    }

    dimension: has_opportunity_line_item {
      type: yesno
      sql: ${TABLE}."HAS_OPPORTUNITY_LINE_ITEM" ;;
    }

    dimension: pricebook_2_id {
      type: string
      sql: ${TABLE}."PRICEBOOK_2_ID" ;;
    }

    dimension: owner_id {
      type: string
      sql: ${TABLE}."OWNER_ID" ;;
    }

    dimension_group: created_date {
      type: time
      sql: ${TABLE}."CREATED_DATE" ;;
    }

    dimension: created_by_id {
      type: string
      sql: ${TABLE}."CREATED_BY_ID" ;;
    }

    dimension_group: last_modified_date {
      type: time
      sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
    }

    dimension: last_modified_by_id {
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

    dimension: fiscal_quarter {
      type: number
      sql: ${TABLE}."FISCAL_QUARTER" ;;
    }

    dimension: fiscal_year {
      type: number
      sql: ${TABLE}."FISCAL_YEAR" ;;
    }

    dimension: fiscal {
      type: string
      sql: ${TABLE}."FISCAL" ;;
    }

    dimension_group: last_viewed_date {
      type: time
      sql: ${TABLE}."LAST_VIEWED_DATE" ;;
    }

    dimension_group: last_referenced_date {
      type: time
      sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
    }

    dimension: synced_quote_id {
      type: string
      sql: ${TABLE}."SYNCED_QUOTE_ID" ;;
    }

    dimension: has_open_activity {
      type: yesno
      sql: ${TABLE}."HAS_OPEN_ACTIVITY" ;;
    }

    dimension: has_overdue_task {
      type: yesno
      sql: ${TABLE}."HAS_OVERDUE_TASK" ;;
    }

    dimension: lead_source_detail_opportunity_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_OPPORTUNITY_C" ;;
    }

    dimension: contact_c {
      type: string
      sql: ${TABLE}."CONTACT_C" ;;
    }

    dimension: engagement_date_c {
      type: date
      sql: ${TABLE}."ENGAGEMENT_DATE_C" ;;
    }

    dimension: push_counter_c {
      type: number
      sql: ${TABLE}."PUSH_COUNTER_C" ;;
    }

    dimension_group: opportunity_close_date_c {
      type: time
      sql: ${TABLE}."OPPORTUNITY_CLOSE_DATE_C" ;;
    }

    dimension: about_company_c {
      type: string
      sql: ${TABLE}."ABOUT_COMPANY_C" ;;
    }

    dimension: added_cof_to_prl_c {
      type: yesno
      sql: ${TABLE}."ADDED_COF_TO_PRL_C" ;;
    }

    dimension: after_hours_c {
      type: string
      sql: ${TABLE}."AFTER_HOURS_C" ;;
    }

    dimension: agreed_to_t_c_c {
      type: yesno
      sql: ${TABLE}."AGREED_TO_T_C_C" ;;
    }

    dimension: attorney_questions_c {
      type: string
      sql: ${TABLE}."ATTORNEY_QUESTIONS_C" ;;
    }

    dimension: billing_c {
      type: string
      sql: ${TABLE}."BILLING_C" ;;
    }

    dimension: billing_usage_upgrades_downgrades_c {
      type: yesno
      sql: ${TABLE}."BILLING_USAGE_UPGRADES_DOWNGRADES_C" ;;
    }

    dimension: business_hours_c {
      type: string
      sql: ${TABLE}."BUSINESS_HOURS_C" ;;
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

    dimension: actual_close_date_checkbox_c {
      type: yesno
      sql: ${TABLE}."ACTUAL_CLOSE_DATE_CHECKBOX_C" ;;
    }

    dimension: close_date_checkbox_c {
      type: yesno
      sql: ${TABLE}."CLOSE_DATE_CHECKBOX_C" ;;
    }

    dimension: collect_calls_c {
      type: string
      sql: ${TABLE}."COLLECT_CALLS_C" ;;
    }

    dimension: company_name_c {
      type: string
      sql: ${TABLE}."COMPANY_NAME_C" ;;
    }

    dimension: customer_activation_date_c {
      type: date
      sql: ${TABLE}."CUSTOMER_ACTIVATION_DATE_C" ;;
    }

    dimension: customer_loyalty_followup_c {
      type: yesno
      sql: ${TABLE}."CUSTOMER_LOYALTY_FOLLOWUP_C" ;;
    }

    dimension: daytime_vm_c {
      type: string
      sql: ${TABLE}."DAYTIME_VM_C" ;;
    }

    dimension: discount_c {
      type: string
      sql: ${TABLE}."DISCOUNT_C" ;;
    }

    dimension: due_date_c {
      type: date
      sql: ${TABLE}."DUE_DATE_C" ;;
    }

    dimension: employee_contact_information_c {
      type: string
      sql: ${TABLE}."EMPLOYEE_CONTACT_INFORMATION_C" ;;
    }

    dimension: extended_hours_c {
      type: string
      sql: ${TABLE}."EXTENDED_HOURS_C" ;;
    }

    dimension: fax_number_c {
      type: string
      sql: ${TABLE}."FAX_NUMBER_C" ;;
    }

    dimension_group: followup_date_c {
      type: time
      sql: ${TABLE}."FOLLOWUP_DATE_C" ;;
    }

    dimension: followup_notes_c {
      type: string
      sql: ${TABLE}."FOLLOWUP_NOTES_C" ;;
    }

    dimension: forwarding_number_c {
      type: string
      sql: ${TABLE}."FORWARDING_NUMBER_C" ;;
    }

    dimension: forwarding_phone_company_c {
      type: string
      sql: ${TABLE}."FORWARDING_PHONE_COMPANY_C" ;;
    }

    dimension: gather_fields_before_xfr_c {
      type: string
      sql: ${TABLE}."GATHER_FIELDS_BEFORE_XFR_C" ;;
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

    dimension: olsa_how_heard_c {
      type: string
      sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
    }

    dimension: interviewer_c {
      type: string
      sql: ${TABLE}."INTERVIEWER_C" ;;
    }

    dimension: prl_id_number_c {
      type: number
      sql: ${TABLE}."PRL_ID_NUMBER_C" ;;
    }

    dimension: kickstarter_created_date_c {
      type: date
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

    dimension: ks_started_c {
      type: date
      sql: ${TABLE}."KS_STARTED_C" ;;
    }

    dimension: ks_to_sales_notes_c {
      type: string
      sql: ${TABLE}."KS_TO_SALES_NOTES_C" ;;
    }

    dimension: gclid_c {
      type: string
      sql: ${TABLE}."GCLID_C" ;;
    }

    dimension: lost_reason_c {
      type: string
      sql: ${TABLE}."LOST_REASON_C" ;;
    }

    dimension: lost_explanation_c {
      type: string
      sql: ${TABLE}."LOST_EXPLANATION_C" ;;
    }

    dimension: most_recent_mql_c {
      type: date
      sql: ${TABLE}."MOST_RECENT_MQL_C" ;;
    }

    dimension: most_recent_sal_c {
      type: date
      sql: ${TABLE}."MOST_RECENT_SAL_C" ;;
    }

    dimension: most_recent_sql_c {
      type: date
      sql: ${TABLE}."MOST_RECENT_SQL_C" ;;
    }

    dimension: ms_apps_c {
      type: yesno
      sql: ${TABLE}."MS_APPS_C" ;;
    }

    dimension: name_of_bp_c {
      type: string
      sql: ${TABLE}."NAME_OF_BP_C" ;;
    }

    dimension: name_of_rp_c {
      type: string
      sql: ${TABLE}."NAME_OF_RP_C" ;;
    }

    dimension: original_mql_c {
      type: date
      sql: ${TABLE}."ORIGINAL_MQL_C" ;;
    }

    dimension: original_sal_c {
      type: date
      sql: ${TABLE}."ORIGINAL_SAL_C" ;;
    }

    dimension: original_sql_c {
      type: date
      sql: ${TABLE}."ORIGINAL_SQL_C" ;;
    }

    dimension: programmer_c {
      type: string
      sql: ${TABLE}."PROGRAMMER_C" ;;
    }

    dimension: partnership_c {
      type: string
      sql: ${TABLE}."PARTNERSHIP_C" ;;
    }

    dimension: plan_level_c {
      type: string
      sql: ${TABLE}."PLAN_LEVEL_C" ;;
    }

    dimension: preferred_area_code_c {
      type: string
      sql: ${TABLE}."PREFERRED_AREA_CODE_C" ;;
    }

    dimension: prl_address_c {
      type: string
      sql: ${TABLE}."PRL_ADDRESS_C" ;;
    }

    dimension: forwarding_followup_c {
      type: yesno
      sql: ${TABLE}."FORWARDING_FOLLOWUP_C" ;;
    }

    dimension: promo_code_c {
      type: string
      sql: ${TABLE}."PROMO_CODE_C" ;;
    }

    dimension: pronunication_and_gender_c {
      type: string
      sql: ${TABLE}."PRONUNICATION_AND_GENDER_C" ;;
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

    dimension: sdr_c {
      type: string
      sql: ${TABLE}."SDR_C" ;;
    }

    dimension: setup_name_c {
      type: string
      sql: ${TABLE}."SETUP_NAME_C" ;;
    }

    dimension: snappy_setup_c {
      type: string
      sql: ${TABLE}."SNAPPY_SETUP_C" ;;
    }

    dimension: special_outs_toc_msg_gathers_c {
      type: string
      sql: ${TABLE}."SPECIAL_OUTS_TOC_MSG_GATHERS_C" ;;
    }

    dimension: status_c {
      type: string
      sql: ${TABLE}."STATUS_C" ;;
    }

    dimension: time_zone_c {
      type: string
      sql: ${TABLE}."TIME_ZONE_C" ;;
    }

    dimension: time_zone_ks_c {
      type: string
      sql: ${TABLE}."TIME_ZONE_KS_C" ;;
    }

    dimension: tod_answering_c {
      type: string
      sql: ${TABLE}."TOD_ANSWERING_C" ;;
    }

    dimension: two_month_followup_c {
      type: yesno
      sql: ${TABLE}."TWO_MONTH_FOLLOWUP_C" ;;
    }

    dimension: type_c {
      type: string
      sql: ${TABLE}."TYPE_C" ;;
    }

    dimension: verify_all_c {
      type: yesno
      sql: ${TABLE}."VERIFY_ALL_C" ;;
    }

    dimension: website_ks_c {
      type: string
      sql: ${TABLE}."WEBSITE_KS_C" ;;
    }

    dimension: zombie_reason_c {
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_C" ;;
    }

    dimension: initial_contact_c {
      type: string
      sql: ${TABLE}."INITIAL_CONTACT_C" ;;
    }

    dimension_group: original_close_date_c {
      type: time
      sql: ${TABLE}."ORIGINAL_CLOSE_DATE_C" ;;
    }

    dimension: sales_sharepoint_created_date_c {
      type: date
      sql: ${TABLE}."SALES_SHAREPOINT_CREATED_DATE_C" ;;
    }

    dimension: do_not_email_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
    }

    dimension: lead_status_c {
      type: string
      sql: ${TABLE}."LEAD_STATUS_C" ;;
    }

    dimension: lead_source_reports_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_REPORTS_C" ;;
    }

    dimension: lead_source_formula_opp_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_FORMULA_OPP_C" ;;
    }

    dimension: sre_c {
      type: date
      sql: ${TABLE}."SRE_C" ;;
    }

    dimension: cfe_type_c {
      type: string
      sql: ${TABLE}."CFE_TYPE_C" ;;
    }

    dimension: cfe_c {
      type: date
      sql: ${TABLE}."CFE_C" ;;
    }

    dimension: snappy_c {
      type: string
      sql: ${TABLE}."SNAPPY_C" ;;
    }

    dimension: interviewer_ks_c {
      type: string
      sql: ${TABLE}."INTERVIEWER_KS_C" ;;
    }

    dimension: cancel_date_c {
      type: date
      sql: ${TABLE}."CANCEL_DATE_C" ;;
    }

    dimension: end_date_c {
      type: date
      sql: ${TABLE}."END_DATE_C" ;;
    }

    dimension: cancel_reason_c {
      type: string
      sql: ${TABLE}."CANCEL_REASON_C" ;;
    }

    dimension: wants_extended_hours_c {
      type: yesno
      sql: ${TABLE}."WANTS_EXTENDED_HOURS_C" ;;
    }

    dimension: wants_scheduling_c {
      type: yesno
      sql: ${TABLE}."WANTS_SCHEDULING_C" ;;
    }

    dimension: wait_to_charge_c {
      type: yesno
      sql: ${TABLE}."WAIT_TO_CHARGE_C" ;;
    }

    dimension: expecting_full_interview_c {
      type: yesno
      sql: ${TABLE}."EXPECTING_FULL_INTERVIEW_C" ;;
    }

    dimension: publishing_ruby_number_c {
      type: yesno
      sql: ${TABLE}."PUBLISHING_RUBY_NUMBER_C" ;;
    }

    dimension: how_heard_c {
      type: string
      sql: ${TABLE}."HOW_HEARD_C" ;;
    }

    dimension: how_heard_detail_c {
      type: string
      sql: ${TABLE}."HOW_HEARD_DETAIL_C" ;;
    }

    dimension: owner_c {
      type: string
      sql: ${TABLE}."OWNER_C" ;;
    }

    dimension: service_use_c {
      type: string
      sql: ${TABLE}."SERVICE_USE_C" ;;
    }

    dimension: phone_provider_c {
      type: string
      sql: ${TABLE}."PHONE_PROVIDER_C" ;;
    }

    dimension: product_c {
      type: string
      sql: ${TABLE}."PRODUCT_C" ;;
    }

    dimension: porting_requested_c {
      type: yesno
      sql: ${TABLE}."PORTING_REQUESTED_C" ;;
    }

    dimension: temporary_service_c {
      type: yesno
      sql: ${TABLE}."TEMPORARY_SERVICE_C" ;;
    }

    dimension: referral_status_c {
      type: string
      sql: ${TABLE}."REFERRAL_STATUS_C" ;;
    }

    dimension: free_trial_end_date_c {
      type: date
      sql: ${TABLE}."FREE_TRIAL_END_DATE_C" ;;
    }

    dimension: billing_contact_c {
      type: string
      sql: ${TABLE}."BILLING_CONTACT_C" ;;
    }

    dimension: billing_email_c {
      type: string
      sql: ${TABLE}."BILLING_EMAIL_C" ;;
    }

    dimension: chat_brand_c {
      type: string
      sql: ${TABLE}."CHAT_BRAND_C" ;;
    }

    dimension: fb_project_created_c {
      type: yesno
      sql: ${TABLE}."FB_PROJECT_CREATED_C" ;;
    }

    dimension: facebook_chat_c {
      type: yesno
      sql: ${TABLE}."FACEBOOK_CHAT_C" ;;
    }

    dimension: gmc_project_created_c {
      type: yesno
      sql: ${TABLE}."GMC_PROJECT_CREATED_C" ;;
    }

    dimension: google_messenger_chat_c {
      type: yesno
      sql: ${TABLE}."GOOGLE_MESSENGER_CHAT_C" ;;
    }

    dimension: pc_account_executive_c {
      type: string
      sql: ${TABLE}."PC_ACCOUNT_EXECUTIVE_C" ;;
    }

    dimension: partnership_discount_c {
      type: string
      sql: ${TABLE}."PARTNERSHIP_DISCOUNT_C" ;;
    }

    dimension: product_type_c {
      type: string
      sql: ${TABLE}."PRODUCT_TYPE_C" ;;
    }

    dimension: project_created_c {
      type: yesno
      sql: ${TABLE}."PROJECT_CREATED_C" ;;
    }

    dimension: stripe_customer_token_c {
      type: string
      sql: ${TABLE}."STRIPE_CUSTOMER_TOKEN_C" ;;
    }

    dimension: wc_project_created_c {
      type: yesno
      sql: ${TABLE}."WC_PROJECT_CREATED_C" ;;
    }

    dimension: actual_chat_volume_pm_c {
      type: number
      sql: ${TABLE}."ACTUAL_CHAT_VOLUME_PM_C" ;;
    }

    dimension: affiliate_group_c {
      type: string
      sql: ${TABLE}."AFFILIATE_GROUP_C" ;;
    }

    dimension: agent_email_c {
      type: string
      sql: ${TABLE}."AGENT_EMAIL_C" ;;
    }

    dimension: agent_name_c {
      type: string
      sql: ${TABLE}."AGENT_NAME_C" ;;
    }

    dimension: anticipated_chat_volume_pm_c {
      type: number
      sql: ${TABLE}."ANTICIPATED_CHAT_VOLUME_PM_C" ;;
    }

    dimension: budget_confirmed_c {
      type: yesno
      sql: ${TABLE}."BUDGET_CONFIRMED_C" ;;
    }

    dimension: calibration_begins_c {
      type: date
      sql: ${TABLE}."CALIBRATION_BEGINS_C" ;;
    }

    dimension: discovery_completed_c {
      type: yesno
      sql: ${TABLE}."DISCOVERY_COMPLETED_C" ;;
    }

    dimension: estimated_monthly_revenue_c {
      type: number
      sql: ${TABLE}."ESTIMATED_MONTHLY_REVENUE_C" ;;
    }

    dimension: lead_number_c {
      type: string
      sql: ${TABLE}."LEAD_NUMBER_C" ;;
    }

    dimension: partner_c {
      type: string
      sql: ${TABLE}."PARTNER_C" ;;
    }

    dimension: roi_analysis_completed_c {
      type: yesno
      sql: ${TABLE}."ROI_ANALYSIS_COMPLETED_C" ;;
    }

    dimension: total_chat_volume_pm_c {
      type: number
      sql: ${TABLE}."TOTAL_CHAT_VOLUME_PM_C" ;;
    }

    dimension: trade_show_details_c {
      type: string
      sql: ${TABLE}."TRADE_SHOW_DETAILS_C" ;;
    }

    dimension: trial_length_c {
      type: string
      sql: ${TABLE}."TRIAL_LENGTH_C" ;;
    }

    dimension: website_chat_c {
      type: yesno
      sql: ${TABLE}."WEBSITE_CHAT_C" ;;
    }

    dimension: survey_email_c {
      type: string
      sql: ${TABLE}."SURVEY_EMAIL_C" ;;
    }

    dimension: start_up_amount_c {
      type: number
      sql: ${TABLE}."START_UP_AMOUNT_C" ;;
    }

    dimension: pc_opportunity_id_c {
      type: string
      sql: ${TABLE}."PC_OPPORTUNITY_ID_C" ;;
    }

    dimension: stripe_card_token_c {
      type: string
      sql: ${TABLE}."STRIPE_CARD_TOKEN_C" ;;
    }

    dimension: kc_opportunity_stage_c {
      type: string
      sql: ${TABLE}."KC_OPPORTUNITY_STAGE_C" ;;
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

    dimension: partnership_percent_c {
      type: string
      sql: ${TABLE}."PARTNERSHIP_PERCENT_C" ;;
    }

    dimension: partnership_dollars_c {
      type: string
      sql: ${TABLE}."PARTNERSHIP_DOLLARS_C" ;;
    }

    dimension: success_with_ruby_cs_c {
      type: string
      sql: ${TABLE}."SUCCESS_WITH_RUBY_CS_C" ;;
    }

    dimension: wants_mobile_c {
      type: yesno
      sql: ${TABLE}."WANTS_MOBILE_C" ;;
    }

    dimension: bilingual_call_routing_c {
      type: string
      sql: ${TABLE}."BILINGUAL_CALL_ROUTING_C" ;;
    }

    dimension: additional_phone_provider_c {
      type: yesno
      sql: ${TABLE}."ADDITIONAL_PHONE_PROVIDER_C" ;;
    }

    dimension: budget_c {
      type: number
      sql: ${TABLE}."BUDGET_C" ;;
    }

    dimension: call_forwarding_c {
      type: string
      sql: ${TABLE}."CALL_FORWARDING_C" ;;
    }

    dimension: forwarding_assistance_c {
      type: yesno
      sql: ${TABLE}."FORWARDING_ASSISTANCE_C" ;;
    }

    dimension: office_call_connect_c {
      type: yesno
      sql: ${TABLE}."OFFICE_CALL_CONNECT_C" ;;
    }

    dimension: previous_call_forwarding_c {
      type: yesno
      sql: ${TABLE}."PREVIOUS_CALL_FORWARDING_C" ;;
    }

    dimension: primary_business_need_c {
      type: string
      sql: ${TABLE}."PRIMARY_BUSINESS_NEED_C" ;;
    }

    dimension: product_interest_c {
      type: string
      sql: ${TABLE}."PRODUCT_INTEREST_C" ;;
    }

    dimension: success_with_ruby_c {
      type: string
      sql: ${TABLE}."SUCCESS_WITH_RUBY_C" ;;
    }

    dimension: wants_calendly_c {
      type: yesno
      sql: ${TABLE}."WANTS_CALENDLY_C" ;;
    }

    dimension: wants_to_port_c {
      type: yesno
      sql: ${TABLE}."WANTS_TO_PORT_C" ;;
    }

    dimension: number_of_users_c {
      type: number
      sql: ${TABLE}."NUMBER_OF_USERS_C" ;;
    }

    dimension_group: sold_date_c {
      type: time
      sql: ${TABLE}."SOLD_DATE_C" ;;
    }

    dimension_group: free_trial_start_c {
      type: time
      sql: ${TABLE}."FREE_TRIAL_START_C" ;;
    }

    dimension_group: onboarding_start_c {
      type: time
      sql: ${TABLE}."ONBOARDING_START_C" ;;
    }

    dimension_group: close_date_time_c {
      type: time
      sql: ${TABLE}."CLOSE_DATE_TIME_C" ;;
    }

    dimension_group: needs_analysis_date_c {
      type: time
      sql: ${TABLE}."NEEDS_ANALYSIS_DATE_C" ;;
    }

    dimension_group: proposal_date_c {
      type: time
      sql: ${TABLE}."PROPOSAL_DATE_C" ;;
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

    dimension: better_growth_c {
      type: yesno
      sql: ${TABLE}."BETTER_GROWTH_C" ;;
    }

    dimension: who_accepted_t_c_c {
      type: string
      sql: ${TABLE}."WHO_ACCEPTED_T_C_C" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: asked_about_hipaa_c {
      type: yesno
      sql: ${TABLE}."ASKED_ABOUT_HIPAA_C" ;;
    }

    dimension: activity_metric_id {
      type: string
      sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
    }

    dimension: plan_c {
      type: string
      sql: ${TABLE}."PLAN_C" ;;
    }

    dimension: covid_19_c {
      type: yesno
      sql: ${TABLE}."COVID_19_C" ;;
    }

    dimension: may_return_c {
      type: yesno
      sql: ${TABLE}."MAY_RETURN_C" ;;
    }

    dimension: interviewed_c {
      type: string
      sql: ${TABLE}."INTERVIEWED_C" ;;
    }

    dimension: date_of_next_action_c {
      type: date
      sql: ${TABLE}."DATE_OF_NEXT_ACTION_C" ;;
    }

    dimension: number_of_followups_c {
      type: string
      sql: ${TABLE}."NUMBER_OF_FOLLOWUPS_C" ;;
    }

    dimension: lean_data_reporting_total_marketing_touches_c {
      type: number
      sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_MARKETING_TOUCHES_C" ;;
    }

    dimension: lean_data_days_in_stage_c {
      type: number
      sql: ${TABLE}."LEAN_DATA_DAYS_IN_STAGE_C" ;;
    }

    dimension: lean_data_routing_action_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
    }

    dimension: lean_data_reporting_won_number_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_REPORTING_WON_NUMBER_C" ;;
    }

    dimension: lean_data_reporting_opportunity_source_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_REPORTING_OPPORTUNITY_SOURCE_C" ;;
    }

    dimension: lean_data_order_number_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_ORDER_NUMBER_C" ;;
    }

    dimension_group: lean_data_reporting_last_run_date_c {
      type: time
      sql: ${TABLE}."LEAN_DATA_REPORTING_LAST_RUN_DATE_C" ;;
    }

    dimension: scheduling_beta_notes_c {
      type: string
      sql: ${TABLE}."SCHEDULING_BETA_NOTES_C" ;;
    }

    dimension_group: scheduling_beta_approved_c {
      type: time
      sql: ${TABLE}."SCHEDULING_BETA_APPROVED_C" ;;
    }

    dimension_group: scheduling_beta_declined_c {
      type: time
      sql: ${TABLE}."SCHEDULING_BETA_DECLINED_C" ;;
    }

    dimension: scheduling_beta_c {
      type: yesno
      sql: ${TABLE}."SCHEDULING_BETA_C" ;;
    }

    dimension: scheduling_beta_status_c {
      type: string
      sql: ${TABLE}."SCHEDULING_BETA_STATUS_C" ;;
    }

    dimension: live_transfer_c {
      type: yesno
      sql: ${TABLE}."LIVE_TRANSFER_C" ;;
    }

    dimension: should_this_partner_get_full_credit_c {
      type: yesno
      sql: ${TABLE}."SHOULD_THIS_PARTNER_GET_FULL_CREDIT_C" ;;
    }

    dimension: lead_source_detail_opp_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_OPP_C" ;;
    }

    dimension_group: ringdna_100_last_email_attempt_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_EMAIL_ATTEMPT_C" ;;
    }

    dimension_group: ringdna_100_first_inbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_INBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_time_to_first_dial_minutes_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_DIAL_MINUTES_C" ;;
    }

    dimension: ringdna_100_email_attempts_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_EMAIL_ATTEMPTS_C" ;;
    }

    dimension: ringdna_100_response_type_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_RESPONSE_TYPE_C" ;;
    }

    dimension_group: ringdna_100_first_outbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_OUTBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_time_to_first_response_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_RESPONSE_C" ;;
    }

    dimension_group: ringdna_100_last_outbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_OUTBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_ring_dna_context_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_100_RING_DNA_CONTEXT_C" ;;
    }

    dimension_group: ringdna_100_last_inbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_INBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_call_attempts_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_CALL_ATTEMPTS_C" ;;
    }

    dimension: is_private {
      type: yesno
      sql: ${TABLE}."IS_PRIVATE" ;;
    }

    dimension: timeline_c {
      type: date
      sql: ${TABLE}."TIMELINE_C" ;;
    }

    dimension: expected_revenue {
      type: number
      sql: ${TABLE}."EXPECTED_REVENUE" ;;
    }

    dimension: total_opportunity_quantity {
      type: number
      sql: ${TABLE}."TOTAL_OPPORTUNITY_QUANTITY" ;;
    }

    dimension: next_steps_date_c {
      type: date
      sql: ${TABLE}."NEXT_STEPS_DATE_C" ;;
    }

    dimension: contract_id {
      type: string
      sql: ${TABLE}."CONTRACT_ID" ;;
    }

    dimension: lead_source_details_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAILS_C" ;;
    }

    dimension: complex_customization_c {
      type: yesno
      sql: ${TABLE}."COMPLEX_CUSTOMIZATION_C" ;;
    }

    dimension: zombie_reason_depcracated_c {
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_DEPCRACATED_C" ;;
    }

    dimension: delayed_deployment_c {
      type: yesno
      sql: ${TABLE}."DELAYED_DEPLOYMENT_C" ;;
    }

    dimension: zombie_c {
      type: yesno
      sql: ${TABLE}."ZOMBIE_C" ;;
    }

    dimension: zombie_reason_notes_c {
      type: string
      sql: ${TABLE}."ZOMBIE_REASON_NOTES_C" ;;
    }

    dimension: delayed_deployment_reason_c {
      type: string
      sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_C" ;;
    }

    dimension: delayed_deployment_reason_notes_c {
      type: string
      sql: ${TABLE}."DELAYED_DEPLOYMENT_REASON_NOTES_C" ;;
    }

    dimension: primary_onboarding_c {
      type: string
      sql: ${TABLE}."PRIMARY_ONBOARDING_C" ;;
    }

    dimension: delayed_deployment_new_target_date_c {
      type: date
      sql: ${TABLE}."DELAYED_DEPLOYMENT_NEW_TARGET_DATE_C" ;;
    }

    dimension: last_close_date_changed_history_id {
      type: string
      sql: ${TABLE}."LAST_CLOSE_DATE_CHANGED_HISTORY_ID" ;;
    }

    dimension: last_amount_changed_history_id {
      type: string
      sql: ${TABLE}."LAST_AMOUNT_CHANGED_HISTORY_ID" ;;
    }

    dimension: contact_id {
      type: string
      sql: ${TABLE}."CONTACT_ID" ;;
    }

    dimension: chatbot_eligible_c {
      type: string
      sql: ${TABLE}."CHATBOT_ELIGIBLE_C" ;;
    }

    dimension_group: ambition_timestamp_for_unittest_c {
      type: time
      sql: ${TABLE}."AMBITION_TIMESTAMP_FOR_UNITTEST_C" ;;
    }

    dimension: scheduling_url_c {
      type: string
      sql: ${TABLE}."SCHEDULING_URL_C" ;;
    }

    dimension: scheduling_approval_status_c {
      type: string
      sql: ${TABLE}."SCHEDULING_APPROVAL_STATUS_C" ;;
    }

    dimension_group: scheduling_approval_date_c {
      type: time
      sql: ${TABLE}."SCHEDULING_APPROVAL_DATE_C" ;;
    }

    dimension: time_zone_adjustability_c {
      type: string
      sql: ${TABLE}."TIME_ZONE_ADJUSTABILITY_C" ;;
    }

    dimension: loads_appointment_type_c {
      type: yesno
      sql: ${TABLE}."LOADS_APPOINTMENT_TYPE_C" ;;
    }

    dimension: ssi_collection_c {
      type: string
      sql: ${TABLE}."SSI_COLLECTION_C" ;;
    }

    dimension: calendly_c {
      type: yesno
      sql: ${TABLE}."CALENDLY_C" ;;
    }

    dimension: required_fields_c {
      type: string
      sql: ${TABLE}."REQUIRED_FIELDS_C" ;;
    }

    dimension: captcha_complex_verification_c {
      type: string
      sql: ${TABLE}."CAPTCHA_COMPLEX_VERIFICATION_C" ;;
    }

    dimension: scheduling_platform_name_c {
      type: string
      sql: ${TABLE}."SCHEDULING_PLATFORM_NAME_C" ;;
    }

    dimension: terms_and_conditions_c {
      type: string
      sql: ${TABLE}."TERMS_AND_CONDITIONS_C" ;;
    }

    dimension: blockers_c {
      type: string
      sql: ${TABLE}."BLOCKERS_C" ;;
    }

    dimension: appointment_types_c {
      type: string
      sql: ${TABLE}."APPOINTMENT_TYPES_C" ;;
    }

    dimension: commission_date_period_c {
      type: date
      sql: ${TABLE}."COMMISSION_DATE_PERIOD_C" ;;
    }

    dimension: outbound_c {
      type: yesno
      sql: ${TABLE}."OUTBOUND_C" ;;
    }

    dimension: did_the_partner_bring_us_the_lead_c {
      type: string
      sql: ${TABLE}."DID_THE_PARTNER_BRING_US_THE_LEAD_C" ;;
    }

    dimension: do_not_sell_chat_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_SELL_CHAT_C" ;;
    }

    dimension: future_start_date_c {
      type: date
      sql: ${TABLE}."FUTURE_START_DATE_C" ;;
    }

    dimension: discussed_red_floor_c {
      type: yesno
      sql: ${TABLE}."DISCUSSED_RED_FLOOR_C" ;;
    }

    dimension: red_floor_notes_c {
      type: string
      sql: ${TABLE}."RED_FLOOR_NOTES_C" ;;
    }

    dimension_group: tcs_last_accepted_c {
      type: time
      sql: ${TABLE}."TCS_LAST_ACCEPTED_C" ;;
    }

    dimension: ringdna_has_opted_out_of_sms_2_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_HAS_OPTED_OUT_OF_SMS_2_C" ;;
    }

    dimension: sequence_c {
      type: string
      sql: ${TABLE}."SEQUENCE_C" ;;
    }

    dimension: lead_source_secondary_detail_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_SECONDARY_DETAIL_C" ;;
    }

    dimension: partner_account_c {
      type: string
      sql: ${TABLE}."PARTNER_ACCOUNT_C" ;;
    }

    dimension: prospect_pain_challenge_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_C" ;;
    }

    dimension: initial_plan_interest_c {
      type: string
      sql: ${TABLE}."INITIAL_PLAN_INTEREST_C" ;;
    }

    dimension: prospect_pain_challenge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_OTHER_C" ;;
    }

    dimension: prospect_industry_knowledge_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_C" ;;
    }

    dimension: prospect_industry_knowledge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_OTHER_C" ;;
    }

    dimension: referring_employee_c {
      type: string
      sql: ${TABLE}."REFERRING_EMPLOYEE_C" ;;
    }

    dimension: referring_contact_c {
      type: string
      sql: ${TABLE}."REFERRING_CONTACT_C" ;;
    }

    dimension: price_v_2_c {
      type: number
      sql: ${TABLE}."PRICE_V_2_C" ;;
    }

    dimension: push_count {
      type: number
      sql: ${TABLE}."PUSH_COUNT" ;;
    }

    dimension_group: last_stage_change_date {
      type: time
      sql: ${TABLE}."LAST_STAGE_CHANGE_DATE" ;;
    }

    dimension: desired_integration_other_c {
      type: string
      sql: ${TABLE}."DESIRED_INTEGRATION_OTHER_C" ;;
    }

    dimension: competitor_other_c {
      type: string
      sql: ${TABLE}."COMPETITOR_OTHER_C" ;;
    }

    dimension: went_to_competitor_c {
      type: string
      sql: ${TABLE}."WENT_TO_COMPETITOR_C" ;;
    }

    dimension: desired_integrations_c {
      type: string
      sql: ${TABLE}."DESIRED_INTEGRATIONS_C" ;;
    }

    dimension: which_competitor_c {
      type: string
      sql: ${TABLE}."WHICH_COMPETITOR_C" ;;
    }

    dimension: lost_explanation_other_c {
      type: string
      sql: ${TABLE}."LOST_EXPLANATION_OTHER_C" ;;
    }

    dimension: ps_partner_key_c {
      type: string
      sql: ${TABLE}."PS_PARTNER_KEY_C" ;;
    }

    dimension: ps_reward_granted_c {
      type: yesno
      sql: ${TABLE}."PS_REWARD_GRANTED_C" ;;
    }

    dimension: ps_customer_key_c {
      type: string
      sql: ${TABLE}."PS_CUSTOMER_KEY_C" ;;
    }

    dimension: ps_reference_email_c {
      type: string
      sql: ${TABLE}."PS_REFERENCE_EMAIL_C" ;;
    }

    dimension_group: kl_last_updated_date_c {
      type: time
      sql: ${TABLE}."KL_LAST_UPDATED_DATE_C" ;;
    }

    dimension: kl_first_bill_c {
      type: number
      sql: ${TABLE}."KL_FIRST_BILL_C" ;;
    }

    dimension: kl_valid_until_c {
      type: date
      sql: ${TABLE}."KL_VALID_UNTIL_C" ;;
    }

    dimension: kl_created_by_c {
      type: string
      sql: ${TABLE}."KL_CREATED_BY_C" ;;
    }

    dimension_group: term_of_use_acceptance_date_c {
      type: time
      sql: ${TABLE}."TERM_OF_USE_ACCEPTANCE_DATE_C" ;;
    }

    dimension: kl_mrr_value_c {
      type: number
      sql: ${TABLE}."KL_MRR_VALUE_C" ;;
    }

    dimension: kl_last_updated_by_c {
      type: string
      sql: ${TABLE}."KL_LAST_UPDATED_BY_C" ;;
    }

    dimension_group: kl_created_date_c {
      type: time
      sql: ${TABLE}."KL_CREATED_DATE_C" ;;
    }

    dimension: kl_quote_status_c {
      type: string
      sql: ${TABLE}."KL_QUOTE_STATUS_C" ;;
    }

    dimension: kl_term_accept_c {
      type: yesno
      sql: ${TABLE}."KL_TERM_ACCEPT_C" ;;
    }

    dimension: kl_email_opt_in_c {
      type: yesno
      sql: ${TABLE}."KL_EMAIL_OPT_IN_C" ;;
    }

    dimension_group: email_notification_opt_in_date_c {
      type: time
      sql: ${TABLE}."EMAIL_NOTIFICATION_OPT_IN_DATE_C" ;;
    }

    dimension: x_aligned_date_c {
      type: date
      sql: ${TABLE}."X_ALIGNED_DATE_C" ;;
    }

    dimension: using_robocall_filtering_c {
      type: yesno
      sql: ${TABLE}."USING_ROBOCALL_FILTERING_C" ;;
    }

    dimension_group: qualified_date_c {
      type: time
      sql: ${TABLE}."QUALIFIED_DATE_C" ;;
    }

    dimension: greeting_2022_c {
      type: string
      sql: ${TABLE}."GREETING_2022_C" ;;
    }

    dimension: how_forwarding_c {
      type: string
      sql: ${TABLE}."HOW_FORWARDING_C" ;;
    }

    dimension_group: aligned_date_c {
      type: time
      sql: ${TABLE}."ALIGNED_DATE_C" ;;
    }

    dimension: x_engaged_date_c {
      type: date
      sql: ${TABLE}."X_ENGAGED_DATE_C" ;;
    }

    dimension_group: engaged_date_c {
      type: time
      sql: ${TABLE}."ENGAGED_DATE_C" ;;
    }

    dimension: quote_link_c {
      type: string
      sql: ${TABLE}."QUOTE_LINK_C" ;;
    }

    dimension: ruby_assessment_c {
      type: string
      sql: ${TABLE}."RUBY_ASSESSMENT_C" ;;
    }

    dimension: ringdna_100_lead_source_detail_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_LEAD_SOURCE_DETAIL_C" ;;
    }

    dimension: ringdna_100_app_owner_email_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_APP_OWNER_EMAIL_C" ;;
    }

    dimension: ringdna_100_order_number_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_ORDER_NUMBER_C" ;;
    }

    dimension: ringdna_100_tracking_number_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_TRACKING_NUMBER_C" ;;
    }

    dimension: ringdna_100_delivery_installation_status_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_DELIVERY_INSTALLATION_STATUS_C" ;;
    }

    dimension: ringdna_100_lending_tree_email_first_time_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_100_LENDING_TREE_EMAIL_FIRST_TIME_C" ;;
    }

    dimension: ringdna_100_previous_stage_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_PREVIOUS_STAGE_C" ;;
    }

    dimension: ringdna_100_stage_open_first_time_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_100_STAGE_OPEN_FIRST_TIME_C" ;;
    }

    dimension: ringdna_100_current_generators_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_CURRENT_GENERATORS_C" ;;
    }

    dimension: ringdna_100_main_competitors_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_MAIN_COMPETITORS_C" ;;
    }

    set: detail {
      fields: [
        id,
        is_deleted,
        account_id,
        record_type_id,
        name,
        description,
        stage_name,
        amount,
        probability,
        close_date,
        type,
        next_step,
        lead_source,
        is_closed,
        is_won,
        forecast_category,
        forecast_category_name,
        campaign_id,
        has_opportunity_line_item,
        pricebook_2_id,
        owner_id,
        created_date_time,
        created_by_id,
        last_modified_date_time,
        last_modified_by_id,
        system_modstamp_time,
        last_activity_date,
        fiscal_quarter,
        fiscal_year,
        fiscal,
        last_viewed_date_time,
        last_referenced_date_time,
        synced_quote_id,
        has_open_activity,
        has_overdue_task,
        lead_source_detail_opportunity_c,
        contact_c,
        engagement_date_c,
        push_counter_c,
        opportunity_close_date_c_time,
        about_company_c,
        added_cof_to_prl_c,
        after_hours_c,
        agreed_to_t_c_c,
        attorney_questions_c,
        billing_c,
        billing_usage_upgrades_downgrades_c,
        business_hours_c,
        call_handling_directory_c,
        call_handling_individuals_c,
        call_handling_misc_c,
        actual_close_date_checkbox_c,
        close_date_checkbox_c,
        collect_calls_c,
        company_name_c,
        customer_activation_date_c,
        customer_loyalty_followup_c,
        daytime_vm_c,
        discount_c,
        due_date_c,
        employee_contact_information_c,
        extended_hours_c,
        fax_number_c,
        followup_date_c_time,
        followup_notes_c,
        forwarding_number_c,
        forwarding_phone_company_c,
        gather_fields_before_xfr_c,
        greeting_c,
        handoff_contact_notes_c,
        handoff_notes_c,
        olsa_how_heard_c,
        interviewer_c,
        prl_id_number_c,
        kickstarter_created_date_c,
        kickstarter_status_c,
        ks_how_heard_c,
        ks_started_c,
        ks_to_sales_notes_c,
        gclid_c,
        lost_reason_c,
        lost_explanation_c,
        most_recent_mql_c,
        most_recent_sal_c,
        most_recent_sql_c,
        ms_apps_c,
        name_of_bp_c,
        name_of_rp_c,
        original_mql_c,
        original_sal_c,
        original_sql_c,
        programmer_c,
        partnership_c,
        plan_level_c,
        preferred_area_code_c,
        prl_address_c,
        forwarding_followup_c,
        promo_code_c,
        pronunication_and_gender_c,
        public_address_c,
        public_email_c,
        published_s_c,
        sdr_c,
        setup_name_c,
        snappy_setup_c,
        special_outs_toc_msg_gathers_c,
        status_c,
        time_zone_c,
        time_zone_ks_c,
        tod_answering_c,
        two_month_followup_c,
        type_c,
        verify_all_c,
        website_ks_c,
        zombie_reason_c,
        initial_contact_c,
        original_close_date_c_time,
        sales_sharepoint_created_date_c,
        do_not_email_c,
        lead_status_c,
        lead_source_reports_c,
        lead_source_formula_opp_c,
        sre_c,
        cfe_type_c,
        cfe_c,
        snappy_c,
        interviewer_ks_c,
        cancel_date_c,
        end_date_c,
        cancel_reason_c,
        wants_extended_hours_c,
        wants_scheduling_c,
        wait_to_charge_c,
        expecting_full_interview_c,
        publishing_ruby_number_c,
        how_heard_c,
        how_heard_detail_c,
        owner_c,
        service_use_c,
        phone_provider_c,
        product_c,
        porting_requested_c,
        temporary_service_c,
        referral_status_c,
        free_trial_end_date_c,
        billing_contact_c,
        billing_email_c,
        chat_brand_c,
        fb_project_created_c,
        facebook_chat_c,
        gmc_project_created_c,
        google_messenger_chat_c,
        pc_account_executive_c,
        partnership_discount_c,
        product_type_c,
        project_created_c,
        stripe_customer_token_c,
        wc_project_created_c,
        actual_chat_volume_pm_c,
        affiliate_group_c,
        agent_email_c,
        agent_name_c,
        anticipated_chat_volume_pm_c,
        budget_confirmed_c,
        calibration_begins_c,
        discovery_completed_c,
        estimated_monthly_revenue_c,
        lead_number_c,
        partner_c,
        roi_analysis_completed_c,
        total_chat_volume_pm_c,
        trade_show_details_c,
        trial_length_c,
        website_chat_c,
        survey_email_c,
        start_up_amount_c,
        pc_opportunity_id_c,
        stripe_card_token_c,
        kc_opportunity_stage_c,
        zqu_current_generators_c,
        zqu_delivery_installation_status_c,
        zqu_main_competitors_c,
        zqu_order_number_c,
        zqu_tracking_number_c,
        zqu_zuora_config_c,
        partnership_percent_c,
        partnership_dollars_c,
        success_with_ruby_cs_c,
        wants_mobile_c,
        bilingual_call_routing_c,
        additional_phone_provider_c,
        budget_c,
        call_forwarding_c,
        forwarding_assistance_c,
        office_call_connect_c,
        previous_call_forwarding_c,
        primary_business_need_c,
        product_interest_c,
        success_with_ruby_c,
        wants_calendly_c,
        wants_to_port_c,
        number_of_users_c,
        sold_date_c_time,
        free_trial_start_c_time,
        onboarding_start_c_time,
        close_date_time_c_time,
        needs_analysis_date_c_time,
        proposal_date_c_time,
        original_active_c,
        original_converted_c,
        original_passive_c,
        better_growth_c,
        who_accepted_t_c_c,
        _fivetran_synced_time,
        asked_about_hipaa_c,
        activity_metric_id,
        plan_c,
        covid_19_c,
        may_return_c,
        interviewed_c,
        date_of_next_action_c,
        number_of_followups_c,
        lean_data_reporting_total_marketing_touches_c,
        lean_data_days_in_stage_c,
        lean_data_routing_action_c,
        lean_data_reporting_won_number_c,
        lean_data_reporting_opportunity_source_c,
        lean_data_order_number_c,
        lean_data_reporting_last_run_date_c_time,
        scheduling_beta_notes_c,
        scheduling_beta_approved_c_time,
        scheduling_beta_declined_c_time,
        scheduling_beta_c,
        scheduling_beta_status_c,
        live_transfer_c,
        should_this_partner_get_full_credit_c,
        lead_source_detail_opp_c,
        ringdna_100_last_email_attempt_c_time,
        ringdna_100_first_inbound_call_c_time,
        ringdna_100_time_to_first_dial_minutes_c,
        ringdna_100_email_attempts_c,
        ringdna_100_response_type_c,
        ringdna_100_first_outbound_call_c_time,
        ringdna_100_time_to_first_response_c,
        ringdna_100_last_outbound_call_c_time,
        ringdna_100_ring_dna_context_c,
        ringdna_100_last_inbound_call_c_time,
        ringdna_100_call_attempts_c,
        is_private,
        timeline_c,
        expected_revenue,
        total_opportunity_quantity,
        next_steps_date_c,
        contract_id,
        lead_source_details_c,
        complex_customization_c,
        zombie_reason_depcracated_c,
        delayed_deployment_c,
        zombie_c,
        zombie_reason_notes_c,
        delayed_deployment_reason_c,
        delayed_deployment_reason_notes_c,
        primary_onboarding_c,
        delayed_deployment_new_target_date_c,
        last_close_date_changed_history_id,
        last_amount_changed_history_id,
        contact_id,
        chatbot_eligible_c,
        ambition_timestamp_for_unittest_c_time,
        scheduling_url_c,
        scheduling_approval_status_c,
        scheduling_approval_date_c_time,
        time_zone_adjustability_c,
        loads_appointment_type_c,
        ssi_collection_c,
        calendly_c,
        required_fields_c,
        captcha_complex_verification_c,
        scheduling_platform_name_c,
        terms_and_conditions_c,
        blockers_c,
        appointment_types_c,
        commission_date_period_c,
        outbound_c,
        did_the_partner_bring_us_the_lead_c,
        do_not_sell_chat_c,
        future_start_date_c,
        discussed_red_floor_c,
        red_floor_notes_c,
        tcs_last_accepted_c_time,
        ringdna_has_opted_out_of_sms_2_c,
        sequence_c,
        lead_source_secondary_detail_c,
        partner_account_c,
        prospect_pain_challenge_c,
        initial_plan_interest_c,
        prospect_pain_challenge_other_c,
        prospect_industry_knowledge_c,
        prospect_industry_knowledge_other_c,
        referring_employee_c,
        referring_contact_c,
        price_v_2_c,
        push_count,
        last_stage_change_date_time,
        desired_integration_other_c,
        competitor_other_c,
        went_to_competitor_c,
        desired_integrations_c,
        which_competitor_c,
        lost_explanation_other_c,
        ps_partner_key_c,
        ps_reward_granted_c,
        ps_customer_key_c,
        ps_reference_email_c,
        kl_last_updated_date_c_time,
        kl_first_bill_c,
        kl_valid_until_c,
        kl_created_by_c,
        term_of_use_acceptance_date_c_time,
        kl_mrr_value_c,
        kl_last_updated_by_c,
        kl_created_date_c_time,
        kl_quote_status_c,
        kl_term_accept_c,
        kl_email_opt_in_c,
        email_notification_opt_in_date_c_time,
        x_aligned_date_c,
        using_robocall_filtering_c,
        qualified_date_c_time,
        greeting_2022_c,
        how_forwarding_c,
        aligned_date_c_time,
        x_engaged_date_c,
        engaged_date_c_time,
        quote_link_c,
        ruby_assessment_c,
        ringdna_100_lead_source_detail_c,
        ringdna_100_app_owner_email_c,
        ringdna_100_order_number_c,
        ringdna_100_tracking_number_c,
        ringdna_100_delivery_installation_status_c,
        ringdna_100_lending_tree_email_first_time_c,
        ringdna_100_previous_stage_c,
        ringdna_100_stage_open_first_time_c,
        ringdna_100_current_generators_c,
        ringdna_100_main_competitors_c
      ]
    }
  }
