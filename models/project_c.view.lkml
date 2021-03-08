view: project_c {
  sql_table_name: "SALESFORCE"."PROJECT_C"
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

  dimension: account_c {
    type: string
    sql: ${TABLE}."ACCOUNT_C" ;;
  }

  dimension: affiliate_c {
    type: string
    sql: ${TABLE}."AFFILIATE_C" ;;
  }

  dimension: affiliate_program_c {
    type: string
    sql: ${TABLE}."AFFILIATE_PROGRAM_C" ;;
  }

  dimension: base_description_c {
    type: string
    sql: ${TABLE}."BASE_DESCRIPTION_C" ;;
  }

  dimension: base_monthly_rate_c {
    type: number
    sql: ${TABLE}."BASE_MONTHLY_RATE_C" ;;
  }

  dimension: billing_contact_c {
    type: string
    sql: ${TABLE}."BILLING_CONTACT_C" ;;
  }

  dimension: billing_contact_name_text_c {
    type: string
    sql: ${TABLE}."BILLING_CONTACT_NAME_TEXT_C" ;;
  }

  dimension: billing_email_c {
    type: string
    sql: ${TABLE}."BILLING_EMAIL_C" ;;
  }

  dimension: calibration_fees_c {
    type: number
    sql: ${TABLE}."CALIBRATION_FEES_C" ;;
  }

  dimension_group: calibration_start_c {
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
    sql: ${TABLE}."CALIBRATION_START_C" ;;
  }

  dimension: cancel_reason_c {
    type: string
    sql: ${TABLE}."CANCEL_REASON_C" ;;
  }

  dimension: cancel_reason_detail_c {
    type: string
    sql: ${TABLE}."CANCEL_REASON_DETAIL_C" ;;
  }

  dimension: chat_brand_c {
    type: string
    sql: ${TABLE}."CHAT_BRAND_C" ;;
  }

  dimension_group: code_installed_date_c {
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
    sql: ${TABLE}."CODE_INSTALLED_DATE_C" ;;
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

  dimension_group: customize_account_date_c {
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
    sql: ${TABLE}."CUSTOMIZE_ACCOUNT_DATE_C" ;;
  }

  dimension: discount_c {
    type: number
    sql: ${TABLE}."DISCOUNT_C" ;;
  }

  dimension: discount_description_c {
    type: string
    sql: ${TABLE}."DISCOUNT_DESCRIPTION_C" ;;
  }

  dimension_group: discount_expiration_date_c {
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
    sql: ${TABLE}."DISCOUNT_EXPIRATION_DATE_C" ;;
  }

  dimension_group: discount_start_date_c {
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
    sql: ${TABLE}."DISCOUNT_START_DATE_C" ;;
  }

  dimension_group: effective_date_of_rate_change_c {
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
    sql: ${TABLE}."EFFECTIVE_DATE_OF_RATE_CHANGE_C" ;;
  }

  dimension: expected_calibrated_monthly_rate_c {
    type: number
    sql: ${TABLE}."EXPECTED_CALIBRATED_MONTHLY_RATE_C" ;;
  }

  dimension_group: extended_calibration_completed_date_c {
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
    sql: ${TABLE}."EXTENDED_CALIBRATION_COMPLETED_DATE_C" ;;
  }

  dimension: id_number_c {
    type: number
    sql: ${TABLE}."ID_NUMBER_C" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
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

  dimension: monthly_rate_change_description_c {
    type: string
    sql: ${TABLE}."MONTHLY_RATE_CHANGE_DESCRIPTION_C" ;;
  }

  dimension_group: monthly_recurring_service_start_date_c {
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
    sql: ${TABLE}."MONTHLY_RECURRING_SERVICE_START_DATE_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: new_or_existing_business_upsell_c {
    type: string
    sql: ${TABLE}."NEW_OR_EXISTING_BUSINESS_UPSELL_C" ;;
  }

  dimension: opportunity_c {
    type: string
    sql: ${TABLE}."OPPORTUNITY_C" ;;
  }

  dimension_group: original_create_date_c {
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
    sql: CAST(${TABLE}."ORIGINAL_CREATE_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: pc_opportunity_id_c {
    type: string
    sql: ${TABLE}."PC_OPPORTUNITY_ID_C" ;;
  }

  dimension: pc_project_id_c {
    type: string
    sql: ${TABLE}."PC_PROJECT_ID_C" ;;
  }

  dimension: pco_id_c {
    type: string
    sql: ${TABLE}."PCO_ID_C" ;;
  }

  dimension: project_complete_c {
    type: yesno
    sql: ${TABLE}."PROJECT_COMPLETE_C" ;;
  }

  dimension_group: project_completed_date_c {
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
    sql: ${TABLE}."PROJECT_COMPLETED_DATE_C" ;;
  }

  dimension: project_coordinator_c {
    type: string
    sql: ${TABLE}."PROJECT_COORDINATOR_C" ;;
  }

  dimension: project_id_c {
    type: string
    # hidden: yes
    sql: ${TABLE}."PROJECT_ID_C" ;;
  }

  dimension_group: project_ready_date_c {
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
    sql: ${TABLE}."PROJECT_READY_DATE_C" ;;
  }

  dimension: project_type_c {
    type: string
    sql: ${TABLE}."PROJECT_TYPE_C" ;;
  }

  dimension: prorate_first_charge_c {
    type: yesno
    sql: ${TABLE}."PRORATE_FIRST_CHARGE_C" ;;
  }

  dimension: region_c {
    type: string
    sql: ${TABLE}."REGION_C" ;;
  }

  dimension: related_contact_c {
    type: string
    sql: ${TABLE}."RELATED_CONTACT_C" ;;
  }

  dimension: rp_main_contact_c {
    type: string
    sql: ${TABLE}."RP_MAIN_CONTACT_C" ;;
  }

  dimension_group: service_end_date_c {
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
    sql: ${TABLE}."SERVICE_END_DATE_C" ;;
  }

  dimension: service_type_c {
    type: string
    sql: ${TABLE}."SERVICE_TYPE_C" ;;
  }

  dimension: status_c {
    type: string
    sql: ${TABLE}."STATUS_C" ;;
  }

  dimension: survey_email_c {
    type: string
    sql: ${TABLE}."SURVEY_EMAIL_C" ;;
  }

  dimension_group: survey_received_date_c {
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
    sql: ${TABLE}."SURVEY_RECEIVED_DATE_C" ;;
  }

  dimension_group: survey_sent_date_c {
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
    sql: ${TABLE}."SURVEY_SENT_DATE_C" ;;
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

  dimension: total_chats_in_calibration_no_spam_c {
    type: number
    sql: ${TABLE}."TOTAL_CHATS_IN_CALIBRATION_NO_SPAM_C" ;;
  }

  dimension: total_chats_in_calibration_with_spam_c {
    type: number
    sql: ${TABLE}."TOTAL_CHATS_IN_CALIBRATION_WITH_SPAM_C" ;;
  }

  dimension: trial_length_c {
    type: string
    sql: ${TABLE}."TRIAL_LENGTH_C" ;;
  }

  dimension: web_developer_c {
    type: string
    sql: ${TABLE}."WEB_DEVELOPER_C" ;;
  }

  dimension_group: web_developer_email_sent_date_c {
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
    sql: ${TABLE}."WEB_DEVELOPER_EMAIL_SENT_DATE_C" ;;
  }

  dimension_group: x_12_day_calibration_rate_sent_c {
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
    sql: ${TABLE}."X_12_DAY_CALIBRATION_RATE_SENT_C" ;;
  }

  dimension: x_15_day_calibration_est_rate_c {
    type: number
    sql: ${TABLE}."X_15_DAY_CALIBRATION_EST_RATE_C" ;;
  }

  dimension_group: x_15_day_calibration_rate_sent_c {
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
    sql: ${TABLE}."X_15_DAY_CALIBRATION_RATE_SENT_C" ;;
  }

  dimension: x_7_day_calibration_est_rate_c {
    type: number
    sql: ${TABLE}."X_7_DAY_CALIBRATION_EST_RATE_C" ;;
  }

  dimension_group: x_7_day_calibration_rate_sent_c {
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
    sql: ${TABLE}."X_7_DAY_CALIBRATION_RATE_SENT_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, project_c.name, project_c.id, project_c.count]
  }
}
