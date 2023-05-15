view: salesforce_zuora_subscription {
  derived_table: {
    sql: SELECT * FROM "SALESFORCE".ZUORA_SUBSCRIPTION_C LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
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

  dimension: zuora_account_c {
    label: "CRM ID"
    type: string
    sql: ${TABLE}."ZUORA_ACCOUNT_C" ;;
  }

  dimension: zuora_auto_renew_c {
    type: yesno
    sql: ${TABLE}."ZUORA_AUTO_RENEW_C" ;;
  }

  dimension: zuora_cancelled_date_c {
    type: date
    sql: ${TABLE}."ZUORA_CANCELLED_DATE_C" ;;
  }

  dimension: zuora_contract_acceptance_date_c {
    type: date
    sql: ${TABLE}."ZUORA_CONTRACT_ACCEPTANCE_DATE_C" ;;
  }

  dimension: zuora_contract_effective_date_c {
    type: date
    sql: ${TABLE}."ZUORA_CONTRACT_EFFECTIVE_DATE_C" ;;
  }

  dimension: zuora_current_term_period_type_c {
    type: string
    sql: ${TABLE}."ZUORA_CURRENT_TERM_PERIOD_TYPE_C" ;;
  }

  dimension: zuora_current_term_c {
    type: string
    sql: ${TABLE}."ZUORA_CURRENT_TERM_C" ;;
  }

  dimension: zuora_customer_account_c {
    type: string
    sql: ${TABLE}."ZUORA_CUSTOMER_ACCOUNT_C" ;;
  }

  dimension: zuora_external_id_c {
    type: string
    sql: ${TABLE}."ZUORA_EXTERNAL_ID_C" ;;
  }

  dimension: zuora_initial_term_period_type_c {
    type: string
    sql: ${TABLE}."ZUORA_INITIAL_TERM_PERIOD_TYPE_C" ;;
  }

  dimension: zuora_initial_term_c {
    type: string
    sql: ${TABLE}."ZUORA_INITIAL_TERM_C" ;;
  }

  dimension: zuora_invoice_owner_c {
    type: string
    sql: ${TABLE}."ZUORA_INVOICE_OWNER_C" ;;
  }

  dimension: zuora_mrr_c {
    label: "MRR"
    type: number
    sql: ${TABLE}."ZUORA_MRR_C" ;;
  }

  dimension: zuora_next_charge_date_c {
    type: date
    sql: ${TABLE}."ZUORA_NEXT_CHARGE_DATE_C" ;;
  }

  dimension: zuora_next_renewal_date_c {
    type: date
    sql: ${TABLE}."ZUORA_NEXT_RENEWAL_DATE_C" ;;
  }

  dimension: zuora_notes_c {
    type: string
    sql: ${TABLE}."ZUORA_NOTES_C" ;;
  }

  dimension: zuora_opportunity_close_date_c {
    type: date
    sql: ${TABLE}."ZUORA_OPPORTUNITY_CLOSE_DATE_C" ;;
  }

  dimension: zuora_opportunity_name_c {
    type: string
    sql: ${TABLE}."ZUORA_OPPORTUNITY_NAME_C" ;;
  }

  dimension: zuora_original_created_date_c {
    type: date
    sql: ${TABLE}."ZUORA_ORIGINAL_CREATED_DATE_C" ;;
  }

  dimension: zuora_original_id_c {
    type: string
    sql: ${TABLE}."ZUORA_ORIGINAL_ID_C" ;;
  }

  dimension: zuora_previous_subscription_id_c {
    type: string
    sql: ${TABLE}."ZUORA_PREVIOUS_SUBSCRIPTION_ID_C" ;;
  }

  dimension: zuora_quote_business_type_c {
    type: string
    sql: ${TABLE}."ZUORA_QUOTE_BUSINESS_TYPE_C" ;;
  }

  dimension: zuora_quote_number_c {
    type: string
    sql: ${TABLE}."ZUORA_QUOTE_NUMBER_C" ;;
  }

  dimension: zuora_quote_type_c {
    type: string
    sql: ${TABLE}."ZUORA_QUOTE_TYPE_C" ;;
  }

  dimension: zuora_renewal_term_period_type_c {
    type: string
    sql: ${TABLE}."ZUORA_RENEWAL_TERM_PERIOD_TYPE_C" ;;
  }

  dimension: zuora_renewal_term_c {
    type: string
    sql: ${TABLE}."ZUORA_RENEWAL_TERM_C" ;;
  }

  dimension: zuora_service_activation_date_c {
    type: date
    sql: ${TABLE}."ZUORA_SERVICE_ACTIVATION_DATE_C" ;;
  }

  dimension: zuora_status_c {
    label: "Status"
    type: string
    sql: ${TABLE}."ZUORA_STATUS_C" ;;
  }

  # dimension_group: zuora_subscription_start_date_c {
  #   label: "Subscription Start Date"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}."ZUORA_SUBSCRIPTION_START_DATE_C" ;;
  # }

  dimension: zuora_subscription_start_date_c {
    label: "Subscription Start Date"
    type: date
    sql: ${TABLE}."ZUORA_SUBSCRIPTION_START_DATE_C" ;;
  }

  # dimension_group: zuora_subscription_end_date_c {
  #   label: "Subscription End Date"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}."ZUORA_SUBSCRIPTION_END_DATE_C" ;;
  # }

  dimension: zuora_subscription_end_date_c {
    label: "Subscription End Date"
    type: date
    sql: ${TABLE}."ZUORA_SUBSCRIPTION_END_DATE_C" ;;
  }

  dimension: zuora_subscription_number_c {
    type: string
    sql: ${TABLE}."ZUORA_SUBSCRIPTION_NUMBER_C" ;;
  }

  dimension: zuora_tcv_c {
    type: number
    sql: ${TABLE}."ZUORA_TCV_C" ;;
  }

  dimension: zuora_term_end_date_c {
    type: date
    sql: ${TABLE}."ZUORA_TERM_END_DATE_C" ;;
  }

  dimension: zuora_term_setting_type_c {
    type: string
    sql: ${TABLE}."ZUORA_TERM_SETTING_TYPE_C" ;;
  }

  dimension: zuora_term_start_date_c {
    type: date
    sql: ${TABLE}."ZUORA_TERM_START_DATE_C" ;;
  }

  dimension: zuora_version_c {
    type: number
    sql: ${TABLE}."ZUORA_VERSION_C" ;;
  }

  dimension: zuora_zuora_id_c {
    type: string
    sql: ${TABLE}."ZUORA_ZUORA_ID_C" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  set: detail {
    fields: [
      id,
      owner_id,
      is_deleted,
      name,
      created_date_time,
      created_by_id,
      last_modified_date_time,
      last_modified_by_id,
      system_modstamp_time,
      last_activity_date,
      zuora_account_c,
      zuora_auto_renew_c,
      zuora_cancelled_date_c,
      zuora_contract_acceptance_date_c,
      zuora_contract_effective_date_c,
      zuora_current_term_period_type_c,
      zuora_current_term_c,
      zuora_customer_account_c,
      zuora_external_id_c,
      zuora_initial_term_period_type_c,
      zuora_initial_term_c,
      zuora_invoice_owner_c,
      zuora_mrr_c,
      zuora_next_charge_date_c,
      zuora_next_renewal_date_c,
      zuora_notes_c,
      zuora_opportunity_close_date_c,
      zuora_opportunity_name_c,
      zuora_original_created_date_c,
      zuora_original_id_c,
      zuora_previous_subscription_id_c,
      zuora_quote_business_type_c,
      zuora_quote_number_c,
      zuora_quote_type_c,
      zuora_renewal_term_period_type_c,
      zuora_renewal_term_c,
      zuora_service_activation_date_c,
      zuora_status_c,
      zuora_subscription_end_date_c,
      zuora_subscription_number_c,
      zuora_subscription_start_date_c,
      zuora_tcv_c,
      zuora_term_end_date_c,
      zuora_term_setting_type_c,
      zuora_term_start_date_c,
      zuora_version_c,
      zuora_zuora_id_c,
      _fivetran_synced_time,
      _fivetran_deleted
    ]
  }
}
