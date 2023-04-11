view: asknicely_nps_c {
  label: "Ask Nicely NPS View"
  sql_table_name: "SALESFORCE"."ASKNICELY_NPS_C"
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

  dimension: account_manager_c {
    type: string
    sql: ${TABLE}."ACCOUNT_MANAGER_C" ;;
  }

  dimension: asknicely_account_c {
    type: string
    sql: ${TABLE}."ASKNICELY_ACCOUNT_C" ;;
  }

  dimension: asknicely_case_c {
    type: string
    sql: ${TABLE}."ASKNICELY_CASE_C" ;;
  }

  dimension: asknicely_comment_c {
    type: string
    sql: ${TABLE}."ASKNICELY_COMMENT_C" ;;
  }

  dimension: asknicely_contact_c {
    type: string
    sql: ${TABLE}."ASKNICELY_CONTACT_C" ;;
  }

  dimension: asknicely_dontcontact_c {
    type: yesno
    sql: ${TABLE}."ASKNICELY_DONTCONTACT_C" ;;
  }

  dimension: asknicely_lead_c {
    type: string
    sql: ${TABLE}."ASKNICELY_LEAD_C" ;;
  }

  dimension: asknicely_npscalc_c {
    type: number
    sql: ${TABLE}."ASKNICELY_NPSCALC_C" ;;
  }

  dimension: asknicely_questioncontactid_c {
    type: number
    sql: ${TABLE}."ASKNICELY_QUESTIONCONTACTID_C" ;;
  }

  dimension: asknicely_questionid_c {
    type: number
    sql: ${TABLE}."ASKNICELY_QUESTIONID_C" ;;
  }

  dimension: asknicely_score_c {
    type: number
    sql: ${TABLE}."ASKNICELY_SCORE_C" ;;
  }

  dimension: asknicely_segment_c {
    type: string
    sql: ${TABLE}."ASKNICELY_SEGMENT_C" ;;
  }

  dimension_group: asknicely_surveyresponded_c {
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
    sql: ${TABLE}.CAST(${TABLE}."ASKNICELY_SURVEYRESPONDED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: asknicely_surveysent_c {
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
    sql: ${TABLE}.CAST(${TABLE}."ASKNICELY_SURVEYSENT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: asknicely_tag_c {
    type: string
    sql: ${TABLE}."ASKNICELY_TAG_C" ;;
  }

  dimension: asknicely_user_c {
    type: string
    sql: ${TABLE}."ASKNICELY_USER_C" ;;
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

  dimension: customer_success_manager_c {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_C" ;;
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
    sql: ${TABLE}.CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: onboarder_c {
    type: string
    sql: ${TABLE}."ONBOARDER_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
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

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
