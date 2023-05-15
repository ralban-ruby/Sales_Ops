view: zuora_subscription {
  sql_table_name: "ZUORA_PROD"."SUBSCRIPTION"
    ;;
  drill_fields: [previous_subscription_id]

  dimension: previous_subscription_id {
    type: string
    sql: ${TABLE}."PREVIOUS_SUBSCRIPTION_ID" ;;
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
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: ancestor_account_id {
    type: string
    sql: ${TABLE}."ANCESTOR_ACCOUNT_ID" ;;
  }

  dimension: auto_renew {
    type: yesno
    sql: ${TABLE}."AUTO_RENEW" ;;
  }

  dimension: bill_to_contact_id {
    type: string
    sql: ${TABLE}."BILL_TO_CONTACT_ID" ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}."CANCEL_REASON" ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}."CANCELLED_DATE" ;;
  }

  dimension_group: contract_acceptance {
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
    sql: ${TABLE}."CONTRACT_ACCEPTANCE_DATE" ;;
  }

  dimension_group: contract_effective {
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
    sql: ${TABLE}."CONTRACT_EFFECTIVE_DATE" ;;
  }

  dimension: cpq_bundle_json_id_qt {
    type: string
    sql: ${TABLE}."CPQ_BUNDLE_JSON_ID_QT" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension_group: created_date {
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

  dimension: creator_account_id {
    type: string
    sql: ${TABLE}."CREATOR_ACCOUNT_ID" ;;
  }

  dimension: creator_invoice_owner_id {
    type: string
    sql: ${TABLE}."CREATOR_INVOICE_OWNER_ID" ;;
  }

  dimension: current_term {
    type: number
    sql: ${TABLE}."CURRENT_TERM" ;;
  }

  dimension: current_term_period_type {
    type: string
    sql: ${TABLE}."CURRENT_TERM_PERIOD_TYPE" ;;
  }

  dimension: default_payment_method_id {
    type: string
    sql: ${TABLE}."DEFAULT_PAYMENT_METHOD_ID" ;;
  }

  dimension: externally_managed_by {
    type: string
    sql: ${TABLE}."EXTERNALLY_MANAGED_BY" ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: initial_term {
    type: number
    sql: ${TABLE}."INITIAL_TERM" ;;
  }

  dimension: initial_term_period_type {
    type: string
    sql: ${TABLE}."INITIAL_TERM_PERIOD_TYPE" ;;
  }

  dimension: invoice_owner_id {
    type: string
    sql: ${TABLE}."INVOICE_OWNER_ID" ;;
  }

  dimension: invoice_template_id {
    type: string
    sql: ${TABLE}."INVOICE_TEMPLATE_ID" ;;
  }

  dimension: is_invoice_separate {
    type: yesno
    sql: ${TABLE}."IS_INVOICE_SEPARATE" ;;
  }

  dimension: is_latest_version {
    type: yesno
    sql: ${TABLE}."IS_LATEST_VERSION" ;;
  }

  dimension_group: last_booking {
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
    sql: ${TABLE}."LAST_BOOKING_DATE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension_group: opportunity_close_date_qt {
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
    sql: ${TABLE}."OPPORTUNITY_CLOSE_DATE_QT" ;;
  }

  dimension: opportunity_name_qt {
    type: string
    sql: ${TABLE}."OPPORTUNITY_NAME_QT" ;;
  }

  dimension_group: original_created {
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
    sql: CAST(${TABLE}."ORIGINAL_CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: original_id {
    type: string
    sql: ${TABLE}."ORIGINAL_ID" ;;
  }

  dimension: parent_account_id {
    type: string
    sql: ${TABLE}."PARENT_ACCOUNT_ID" ;;
  }

  dimension: partner_discount_c {
    type: string
    sql: ${TABLE}."PARTNER_DISCOUNT_C" ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}."PAYMENT_TERM" ;;
  }

  dimension: promo_code_c {
    type: string
    sql: ${TABLE}."PROMO_CODE_C" ;;
  }

  dimension: quote_business_type_qt {
    type: string
    sql: ${TABLE}."QUOTE_BUSINESS_TYPE_QT" ;;
  }

  dimension: quote_number_qt {
    type: string
    sql: ${TABLE}."QUOTE_NUMBER_QT" ;;
  }

  dimension: quote_type_qt {
    type: string
    sql: ${TABLE}."QUOTE_TYPE_QT" ;;
  }

  dimension: renewal_setting {
    type: string
    sql: ${TABLE}."RENEWAL_SETTING" ;;
  }

  dimension: renewal_term {
    type: number
    sql: ${TABLE}."RENEWAL_TERM" ;;
  }

  dimension: renewal_term_period_type {
    type: string
    sql: ${TABLE}."RENEWAL_TERM_PERIOD_TYPE" ;;
  }

  dimension: returning_customer_c {
    type: string
    sql: ${TABLE}."RETURNING_CUSTOMER_C" ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}."REVISION" ;;
  }

  dimension: sequence_set_id {
    type: string
    sql: ${TABLE}."SEQUENCE_SET_ID" ;;
  }

  dimension_group: service_activation {
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
    sql: ${TABLE}."SERVICE_ACTIVATION_DATE" ;;
  }

  dimension: sold_to_contact_id {
    type: string
    sql: ${TABLE}."SOLD_TO_CONTACT_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subscription_bill_to_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_BILL_TO_ID" ;;
  }

  dimension: subscription_bill_to_snapshot_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_BILL_TO_SNAPSHOT_ID" ;;
  }

  dimension: subscription_cancel_reason_c {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_CANCEL_REASON_C" ;;
  }

  dimension_group: subscription_end {
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
    sql: ${TABLE}."SUBSCRIPTION_END_DATE" ;;
  }

  dimension: subscription_sold_to_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_SOLD_TO_ID" ;;
  }

  dimension: subscription_sold_to_snapshot_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_SOLD_TO_SNAPSHOT_ID" ;;
  }

  dimension_group: subscription_start {
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
    sql: ${TABLE}."SUBSCRIPTION_START_DATE" ;;
  }

  dimension: subscription_version_amendment_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_VERSION_AMENDMENT_ID" ;;
  }

  dimension_group: term_end {
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
    sql: ${TABLE}."TERM_END_DATE" ;;
  }

  dimension_group: term_start {
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
    sql: ${TABLE}."TERM_START_DATE" ;;
  }

  dimension: term_type {
    type: string
    sql: ${TABLE}."TERM_TYPE" ;;
  }

  dimension: updated_by_id {
    type: string
    sql: ${TABLE}."UPDATED_BY_ID" ;;
  }

  dimension_group: updated {
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
    sql: CAST(${TABLE}."UPDATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      previous_subscription_id,
      name,
      account.sales_rep_name,
      account.name,
      account.customer_service_rep_name,
      account.parent_account_id
    ]
  }
}
