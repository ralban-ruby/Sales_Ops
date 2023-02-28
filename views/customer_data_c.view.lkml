view: customer_data_c {
  sql_table_name: "SALESFORCE"."CUSTOMER_DATA_C"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
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
    sql: ${TABLE}.CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: accessed_ruby_help_center_c {
    type: yesno
    sql: ${TABLE}."ACCESSED_RUBY_HELP_CENTER_C" ;;
  }

  dimension: account_c {
    type: string
    sql: ${TABLE}."ACCOUNT_C" ;;
  }

  dimension: chat_8_day_plan_c {
    type: number
    sql: ${TABLE}."CHAT_8_DAY_PLAN_C" ;;
  }

  dimension: chat_8_day_projected_usage_c {
    type: number
    sql: ${TABLE}."CHAT_8_DAY_PROJECTED_USAGE_C" ;;
  }

  dimension: chat_8_day_suggested_plan_chats_c {
    type: number
    sql: ${TABLE}."CHAT_8_DAY_SUGGESTED_PLAN_CHATS_C" ;;
  }

  dimension: chat_actionable_support_c {
    type: number
    sql: ${TABLE}."CHAT_ACTIONABLE_SUPPORT_C" ;;
  }

  dimension: chat_actionable_support_ytd_c {
    type: number
    sql: ${TABLE}."CHAT_ACTIONABLE_SUPPORT_YTD_C" ;;
  }

  dimension: chat_current_plan_chats_c {
    type: number
    sql: ${TABLE}."CHAT_CURRENT_PLAN_CHATS_C" ;;
  }

  dimension: chat_leads_c {
    type: number
    sql: ${TABLE}."CHAT_LEADS_C" ;;
  }

  dimension: chat_leads_ytd_c {
    type: number
    sql: ${TABLE}."CHAT_LEADS_YTD_C" ;;
  }

  dimension_group: chat_next_invoice_date_c {
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
    sql: ${TABLE}."CHAT_NEXT_INVOICE_DATE_C" ;;
  }

  dimension: chat_non_actionable_support_c {
    type: number
    sql: ${TABLE}."CHAT_NON_ACTIONABLE_SUPPORT_C" ;;
  }

  dimension: chat_non_actionable_support_ytd_c {
    type: number
    sql: ${TABLE}."CHAT_NON_ACTIONABLE_SUPPORT_YTD_C" ;;
  }

  dimension_group: chat_previous_invoice_date_c {
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
    sql: ${TABLE}."CHAT_PREVIOUS_INVOICE_DATE_C" ;;
  }

  dimension: chat_recruitment_c {
    type: number
    sql: ${TABLE}."CHAT_RECRUITMENT_C" ;;
  }

  dimension: chat_recruitment_ytd_c {
    type: number
    sql: ${TABLE}."CHAT_RECRUITMENT_YTD_C" ;;
  }

  dimension: chat_spam_c {
    type: number
    sql: ${TABLE}."CHAT_SPAM_C" ;;
  }

  dimension: chat_spam_ytd_c {
    type: number
    sql: ${TABLE}."CHAT_SPAM_YTD_C" ;;
  }

  dimension: chat_suggested_plan_3_month_avg_c {
    type: number
    sql: ${TABLE}."CHAT_SUGGESTED_PLAN_3_MONTH_AVG_C" ;;
  }

  dimension: chat_suggested_plan_current_c {
    type: number
    sql: ${TABLE}."CHAT_SUGGESTED_PLAN_CURRENT_C" ;;
  }

  dimension: chat_usage_current_billing_period_c {
    type: number
    sql: ${TABLE}."CHAT_USAGE_CURRENT_BILLING_PERIOD_C" ;;
  }

  dimension: chats_used_first_week_c {
    type: number
    sql: ${TABLE}."CHATS_USED_FIRST_WEEK_C" ;;
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
    sql: ${TABLE}.CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: exported_activity_logs_c {
    type: yesno
    sql: ${TABLE}."EXPORTED_ACTIVITY_LOGS_C" ;;
  }

  dimension: externalid_c {
    type: string
    sql: ${TABLE}."EXTERNALID_C" ;;
  }

  dimension: has_ported_c {
    type: yesno
    sql: ${TABLE}."HAS_PORTED_C" ;;
  }

  dimension: has_set_a_status_c {
    type: yesno
    sql: ${TABLE}."HAS_SET_A_STATUS_C" ;;
  }

  dimension: holiday_answering_c {
    type: yesno
    sql: ${TABLE}."HOLIDAY_ANSWERING_C" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension_group: last_login_app_c {
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
    sql: ${TABLE}."LAST_LOGIN_APP_C" ;;
  }

  dimension_group: last_login_force_c {
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
    sql: ${TABLE}."LAST_LOGIN_FORCE_C" ;;
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
    sql: ${TABLE}.CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_time_status_set_c {
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
    sql: ${TABLE}."LAST_TIME_STATUS_SET_C" ;;
  }

  dimension_group: last_visit_to_ruby_help_center_c {
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
    sql: ${TABLE}."LAST_VISIT_TO_RUBY_HELP_CENTER_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: no_of_users_logged_in_c {
    type: number
    sql: ${TABLE}."NO_OF_USERS_LOGGED_IN_C" ;;
  }

  dimension: perc_of_calls_outside_answer_hours_c {
    type: number
    sql: ${TABLE}."PERC_OF_CALLS_OUTSIDE_ANSWER_HOURS_C" ;;
  }

  dimension_group: recent_app_forward_c {
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
    sql: ${TABLE}."RECENT_APP_FORWARD_C" ;;
  }

  dimension_group: recent_cid_blocked_c {
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
    sql: ${TABLE}."RECENT_CID_BLOCKED_C" ;;
  }

  dimension_group: recent_cid_spoof_c {
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
    sql: ${TABLE}."RECENT_CID_SPOOF_C" ;;
  }

  dimension_group: recent_obc_request_c {
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
    sql: ${TABLE}."RECENT_OBC_REQUEST_C" ;;
  }

  dimension_group: recent_text_c {
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
    sql: ${TABLE}."RECENT_TEXT_C" ;;
  }

  dimension_group: rs_anniversary_date_c {
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
    sql: ${TABLE}."RS_ANNIVERSARY_DATE_C" ;;
  }

  dimension: rs_current_clients_c {
    type: number
    sql: ${TABLE}."RS_CURRENT_CLIENTS_C" ;;
  }

  dimension: rs_current_clients_ytd_c {
    type: number
    sql: ${TABLE}."RS_CURRENT_CLIENTS_YTD_C" ;;
  }

  dimension: rs_current_plan_minutes_1_c {
    type: number
    sql: ${TABLE}."RS_CURRENT_PLAN_MINUTES_1_C" ;;
  }

  dimension: rs_current_plan_minutes_c {
    type: number
    sql: ${TABLE}."RS_CURRENT_PLAN_MINUTES_C" ;;
  }

  dimension: rs_has_blocked_caller_id_c {
    type: yesno
    sql: ${TABLE}."RS_HAS_BLOCKED_CALLER_ID_C" ;;
  }

  dimension: rs_leads_c {
    type: number
    sql: ${TABLE}."RS_LEADS_C" ;;
  }

  dimension: rs_leads_ytd_c {
    type: number
    sql: ${TABLE}."RS_LEADS_YTD_C" ;;
  }

  dimension: rs_minutes_used_c {
    type: number
    sql: ${TABLE}."RS_MINUTES_USED_C" ;;
  }

  dimension: rs_minutes_used_fw_c {
    type: number
    sql: ${TABLE}."RS_MINUTES_USED_FW_C" ;;
  }

  dimension_group: rs_next_invoice_date_c {
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
    sql: ${TABLE}."RS_NEXT_INVOICE_DATE_C" ;;
  }

  dimension_group: rs_previous_invoice_c {
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
    sql: ${TABLE}."RS_PREVIOUS_INVOICE_C" ;;
  }

  dimension: rs_projected_minutes_c {
    type: number
    sql: ${TABLE}."RS_PROJECTED_MINUTES_C" ;;
  }

  dimension: rs_robocalls_c {
    type: number
    sql: ${TABLE}."RS_ROBOCALLS_C" ;;
  }

  dimension: rs_robocalls_ytd_c {
    type: number
    sql: ${TABLE}."RS_ROBOCALLS_YTD_C" ;;
  }

  dimension: rs_solicitors_c {
    type: number
    sql: ${TABLE}."RS_SOLICITORS_C" ;;
  }

  dimension: rs_solicitors_ytd_c {
    type: number
    sql: ${TABLE}."RS_SOLICITORS_YTD_C" ;;
  }

  dimension: rs_suggested_plan_3_month_avg_c {
    type: number
    sql: ${TABLE}."RS_SUGGESTED_PLAN_3_MONTH_AVG_C" ;;
  }

  dimension: rs_suggested_plan_current_c {
    type: number
    sql: ${TABLE}."RS_SUGGESTED_PLAN_CURRENT_C" ;;
  }

  dimension: rs_suggested_plan_minutes_c {
    type: number
    sql: ${TABLE}."RS_SUGGESTED_PLAN_MINUTES_C" ;;
  }

  dimension: rs_using_robocall_filtering_c {
    type: yesno
    sql: ${TABLE}."RS_USING_ROBOCALL_FILTERING_C" ;;
  }

  dimension: ruby_24_7_c {
    type: yesno
    sql: ${TABLE}."RUBY_24_7_C" ;;
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
    sql: ${TABLE}.CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: using_outbound_call_assists_through_app_c {
    type: yesno
    sql: ${TABLE}."USING_OUTBOUND_CALL_ASSISTS_THROUGH_APP_C" ;;
  }

  dimension: using_robocall_filtering_c {
    type: yesno
    sql: ${TABLE}."USING_ROBOCALL_FILTERING_C" ;;
  }

  dimension: using_scheduling_c {
    type: yesno
    sql: ${TABLE}."USING_SCHEDULING_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
