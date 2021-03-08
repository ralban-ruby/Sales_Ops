view: case {
  sql_table_name: "SALESFORCE"."CASE"
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

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: ar_assistance_c {
    type: string
    sql: ${TABLE}."AR_ASSISTANCE_C" ;;
  }

  dimension: buddy_case_c {
    type: yesno
    sql: ${TABLE}."BUDDY_CASE_C" ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}."CASE_NUMBER" ;;
  }

  dimension: churn_risk_c {
    type: yesno
    sql: ${TABLE}."CHURN_RISK_C" ;;
  }

  dimension_group: closed {
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
    sql: CAST(${TABLE}."CLOSED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: company_kb_c {
    type: string
    sql: ${TABLE}."COMPANY_KB_C" ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}."CONTACT_EMAIL" ;;
  }

  dimension: contact_fax {
    type: string
    sql: ${TABLE}."CONTACT_FAX" ;;
  }

  dimension: contact_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: contact_mobile {
    type: string
    sql: ${TABLE}."CONTACT_MOBILE" ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}."CONTACT_PHONE" ;;
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

  dimension: credit_applied_c {
    type: string
    sql: ${TABLE}."CREDIT_APPLIED_C" ;;
  }

  dimension: customer_saved_c {
    type: yesno
    sql: ${TABLE}."CUSTOMER_SAVED_C" ;;
  }

  dimension: customer_success_selection_c {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_SELECTION_C" ;;
  }

  dimension_group: date_error_occurred_c {
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
    sql: ${TABLE}."DATE_ERROR_OCCURRED_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: email_kb_c {
    type: string
    sql: ${TABLE}."EMAIL_KB_C" ;;
  }

  dimension: error_notes_c {
    type: string
    sql: ${TABLE}."ERROR_NOTES_C" ;;
  }

  dimension: error_specifics_c {
    type: string
    sql: ${TABLE}."ERROR_SPECIFICS_C" ;;
  }

  dimension: error_type_c {
    type: string
    sql: ${TABLE}."ERROR_TYPE_C" ;;
  }

  dimension: feature_request_c {
    type: string
    sql: ${TABLE}."FEATURE_REQUEST_C" ;;
  }

  dimension: feature_request_notes_c {
    type: string
    sql: ${TABLE}."FEATURE_REQUEST_NOTES_C" ;;
  }

  dimension: first_cancel_reason_c {
    type: string
    sql: ${TABLE}."FIRST_CANCEL_REASON_C" ;;
  }

  dimension: first_reason_detail_c {
    type: string
    sql: ${TABLE}."FIRST_REASON_DETAIL_C" ;;
  }

  dimension: full_name_kb_c {
    type: string
    sql: ${TABLE}."FULL_NAME_KB_C" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."LANGUAGE" ;;
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

  dimension_group: last_response_time_c {
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
    sql: CAST(${TABLE}."LAST_RESPONSE_TIME_C" AS TIMESTAMP_NTZ) ;;
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

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: litigation_c {
    type: string
    sql: ${TABLE}."LITIGATION_C" ;;
  }

  dimension: marked_c {
    type: yesno
    sql: ${TABLE}."MARKED_C" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: mbg_exercised_c {
    type: yesno
    sql: ${TABLE}."MBG_EXERCISED_C" ;;
  }

  dimension: new_reply_notification_c {
    type: string
    sql: ${TABLE}."NEW_REPLY_NOTIFICATION_C" ;;
  }

  dimension: notes_c {
    type: string
    sql: ${TABLE}."NOTES_C" ;;
  }

  dimension: opened_it_ticket_c {
    type: yesno
    sql: ${TABLE}."OPENED_IT_TICKET_C" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: primary_attempted_tactic_c {
    type: string
    sql: ${TABLE}."PRIMARY_ATTEMPTED_TACTIC_C" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."REASON" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: related_customer_project_c {
    type: string
    sql: ${TABLE}."RELATED_CUSTOMER_PROJECT_C" ;;
  }

  dimension: ruby_receptionist_c {
    type: string
    sql: ${TABLE}."RUBY_RECEPTIONIST_C" ;;
  }

  dimension: second_cancel_reason_c {
    type: string
    sql: ${TABLE}."SECOND_CANCEL_REASON_C" ;;
  }

  dimension: second_reason_detail_c {
    type: string
    sql: ${TABLE}."SECOND_REASON_DETAIL_C" ;;
  }

  dimension: secondary_attempted_tactic_c {
    type: string
    sql: ${TABLE}."SECONDARY_ATTEMPTED_TACTIC_C" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

  dimension: supplied_company {
    type: string
    sql: ${TABLE}."SUPPLIED_COMPANY" ;;
  }

  dimension: supplied_email {
    type: string
    sql: ${TABLE}."SUPPLIED_EMAIL" ;;
  }

  dimension: supplied_name {
    type: string
    sql: ${TABLE}."SUPPLIED_NAME" ;;
  }

  dimension: supplied_phone {
    type: string
    sql: ${TABLE}."SUPPLIED_PHONE" ;;
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

  dimension: third_cancel_reason_c {
    type: string
    sql: ${TABLE}."THIRD_CANCEL_REASON_C" ;;
  }

  dimension: third_reason_details_c {
    type: string
    sql: ${TABLE}."THIRD_REASON_DETAILS_C" ;;
  }

  dimension: topic_c {
    type: string
    sql: ${TABLE}."TOPIC_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: went_to_competitor_c {
    type: yesno
    sql: ${TABLE}."WENT_TO_COMPETITOR_C" ;;
  }

  dimension: what_saved_c {
    type: string
    sql: ${TABLE}."WHAT_SAVED_C" ;;
  }

  dimension: who_saved_c {
    type: string
    sql: ${TABLE}."WHO_SAVED_C" ;;
  }

  dimension: wrap_up_code_c {
    type: string
    sql: ${TABLE}."WRAP_UP_CODE_C" ;;
  }

  dimension: wrap_up_sub_codes_c {
    type: string
    sql: ${TABLE}."WRAP_UP_SUB_CODES_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      supplied_name,
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
