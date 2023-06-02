view: salesforce_zuora_billing_account {
  derived_table: {
    sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.ZUORA_CUSTOMER_ACCOUNT_C WHERE IS_DELETED <> 1
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
    type: string
    sql: ${TABLE}."ZUORA_ACCOUNT_C" ;;
  }

  dimension: zuora_account_number_c {
    type: string
    sql: ${TABLE}."ZUORA_ACCOUNT_NUMBER_C" ;;
  }

  dimension: zuora_additional_email_addresses_c {
    type: string
    sql: ${TABLE}."ZUORA_ADDITIONAL_EMAIL_ADDRESSES_C" ;;
  }

  dimension: zuora_allow_invoice_edit_c {
    type: string
    sql: ${TABLE}."ZUORA_ALLOW_INVOICE_EDIT_C" ;;
  }

  dimension: zuora_auto_pay_c {
    type: yesno
    sql: ${TABLE}."ZUORA_AUTO_PAY_C" ;;
  }

  dimension: zuora_balance_c {
    type: number
    sql: ${TABLE}."ZUORA_BALANCE_C" ;;
  }

  dimension: zuora_batch_c {
    type: string
    sql: ${TABLE}."ZUORA_BATCH_C" ;;
  }

  dimension: zuora_bcd_setting_option_c {
    type: string
    sql: ${TABLE}."ZUORA_BCD_SETTING_OPTION_C" ;;
  }

  dimension: zuora_bill_cycle_day_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_CYCLE_DAY_C" ;;
  }

  dimension: zuora_bill_to_address_1_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_ADDRESS_1_C" ;;
  }

  dimension: zuora_bill_to_address_2_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_ADDRESS_2_C" ;;
  }

  dimension: zuora_bill_to_city_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_CITY_C" ;;
  }

  dimension: zuora_bill_to_country_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_COUNTRY_C" ;;
  }

  dimension: zuora_bill_to_fax_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_FAX_C" ;;
  }

  dimension: zuora_bill_to_id_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_ID_C" ;;
  }

  dimension: zuora_bill_to_name_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_NAME_C" ;;
  }

  dimension: zuora_bill_to_postal_code_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_POSTAL_CODE_C" ;;
  }

  dimension: zuora_bill_to_state_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_STATE_C" ;;
  }

  dimension: zuora_bill_to_work_email_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_WORK_EMAIL_C" ;;
  }

  dimension: zuora_bill_to_work_phone_c {
    type: string
    sql: ${TABLE}."ZUORA_BILL_TO_WORK_PHONE_C" ;;
  }

  dimension: zuora_communication_profile_id_c {
    type: string
    sql: ${TABLE}."ZUORA_COMMUNICATION_PROFILE_ID_C" ;;
  }

  dimension: zuora_credit_balance_c {
    type: number
    sql: ${TABLE}."ZUORA_CREDIT_BALANCE_C" ;;
  }

  dimension: zuora_credit_card_expiration_c {
    type: string
    sql: ${TABLE}."ZUORA_CREDIT_CARD_EXPIRATION_C" ;;
  }

  dimension: zuora_credit_card_number_c {
    type: string
    sql: ${TABLE}."ZUORA_CREDIT_CARD_NUMBER_C" ;;
  }

  dimension: zuora_currency_c {
    type: string
    sql: ${TABLE}."ZUORA_CURRENCY_C" ;;
  }

  dimension: zuora_customer_service_rep_name_c {
    type: string
    sql: ${TABLE}."ZUORA_CUSTOMER_SERVICE_REP_NAME_C" ;;
  }

  dimension: zuora_default_payment_method_c {
    type: string
    sql: ${TABLE}."ZUORA_DEFAULT_PAYMENT_METHOD_C" ;;
  }

  dimension: zuora_entity_id_c {
    type: string
    sql: ${TABLE}."ZUORA_ENTITY_ID_C" ;;
  }

  dimension: zuora_external_id_c {
    type: string
    sql: ${TABLE}."ZUORA_EXTERNAL_ID_C" ;;
  }

  dimension: zuora_invoice_delivery_prefs_email_c {
    type: string
    sql: ${TABLE}."ZUORA_INVOICE_DELIVERY_PREFS_EMAIL_C" ;;
  }

  dimension: zuora_invoice_delivery_prefs_print_c {
    type: string
    sql: ${TABLE}."ZUORA_INVOICE_DELIVERY_PREFS_PRINT_C" ;;
  }

  dimension: zuora_invoice_template_id_c {
    type: string
    sql: ${TABLE}."ZUORA_INVOICE_TEMPLATE_ID_C" ;;
  }

  dimension: zuora_is_crm_id_change_processed_c {
    type: yesno
    sql: ${TABLE}."ZUORA_IS_CRM_ID_CHANGE_PROCESSED_C" ;;
  }

  dimension: zuora_last_invoice_date_c {
    type: date
    sql: ${TABLE}."ZUORA_LAST_INVOICE_DATE_C" ;;
  }

  dimension: zuora_mrr_c {
    type: number
    sql: ${TABLE}."ZUORA_MRR_C" ;;
  }

  dimension: zuora_notes_c {
    type: string
    sql: ${TABLE}."ZUORA_NOTES_C" ;;
  }

  dimension: zuora_parent_c {
    type: string
    sql: ${TABLE}."ZUORA_PARENT_C" ;;
  }

  dimension: zuora_payment_gateway_c {
    type: string
    sql: ${TABLE}."ZUORA_PAYMENT_GATEWAY_C" ;;
  }

  dimension: zuora_payment_method_type_c {
    type: string
    sql: ${TABLE}."ZUORA_PAYMENT_METHOD_TYPE_C" ;;
  }

  dimension: zuora_payment_term_c {
    type: string
    sql: ${TABLE}."ZUORA_PAYMENT_TERM_C" ;;
  }

  dimension: zuora_purchase_order_number_c {
    type: string
    sql: ${TABLE}."ZUORA_PURCHASE_ORDER_NUMBER_C" ;;
  }

  dimension: zuora_sales_rep_name_c {
    type: string
    sql: ${TABLE}."ZUORA_SALES_REP_NAME_C" ;;
  }

  dimension: zuora_sold_to_address_1_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_ADDRESS_1_C" ;;
  }

  dimension: zuora_sold_to_address_2_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_ADDRESS_2_C" ;;
  }

  dimension: zuora_sold_to_city_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_CITY_C" ;;
  }

  dimension: zuora_sold_to_country_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_COUNTRY_C" ;;
  }

  dimension: zuora_sold_to_fax_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_FAX_C" ;;
  }

  dimension: zuora_sold_to_id_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_ID_C" ;;
  }

  dimension: zuora_sold_to_name_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_NAME_C" ;;
  }

  dimension: zuora_sold_to_postal_code_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_POSTAL_CODE_C" ;;
  }

  dimension: zuora_sold_to_state_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_STATE_C" ;;
  }

  dimension: zuora_sold_to_work_email_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_WORK_EMAIL_C" ;;
  }

  dimension: zuora_sold_to_work_phone_c {
    type: string
    sql: ${TABLE}."ZUORA_SOLD_TO_WORK_PHONE_C" ;;
  }

  dimension: zuora_status_c {
    type: string
    sql: ${TABLE}."ZUORA_STATUS_C" ;;
  }

  dimension: zuora_tax_exempt_certificate_id_c {
    type: string
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_CERTIFICATE_ID_C" ;;
  }

  dimension: zuora_tax_exempt_certificate_type_c {
    type: string
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_CERTIFICATE_TYPE_C" ;;
  }

  dimension: zuora_tax_exempt_description_c {
    type: string
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_DESCRIPTION_C" ;;
  }

  dimension: zuora_tax_exempt_effective_date_c {
    type: date
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_EFFECTIVE_DATE_C" ;;
  }

  dimension: zuora_tax_exempt_expiration_date_c {
    type: date
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_EXPIRATION_DATE_C" ;;
  }

  dimension: zuora_tax_exempt_issuing_jurisdiction_c {
    type: string
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_ISSUING_JURISDICTION_C" ;;
  }

  dimension: zuora_tax_exempt_status_c {
    type: string
    sql: ${TABLE}."ZUORA_TAX_EXEMPT_STATUS_C" ;;
  }

  dimension: zuora_total_invoice_balance_c {
    type: number
    sql: ${TABLE}."ZUORA_TOTAL_INVOICE_BALANCE_C" ;;
  }

  dimension: zuora_zuora_id_c {
    type: string
    sql: ${TABLE}."ZUORA_ZUORA_ID_C" ;;
  }

  dimension: stripe_card_token_c {
    type: string
    sql: ${TABLE}."STRIPE_CARD_TOKEN_C" ;;
  }

  dimension: stripe_customer_token_c {
    type: string
    sql: ${TABLE}."STRIPE_CUSTOMER_TOKEN_C" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: most_recent_credit_memo_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_CREDIT_MEMO_C" ;;
  }

  dimension: new_rsmrr_c {
    type: string
    sql: ${TABLE}."NEW_RSMRR_C" ;;
  }

  dimension: new_rsoverage_rate_c {
    type: string
    sql: ${TABLE}."NEW_RSOVERAGE_RATE_C" ;;
  }

  dimension: most_recent_payment_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_PAYMENT_C" ;;
  }

  dimension: base_fee_c {
    type: number
    sql: ${TABLE}."BASE_FEE_C" ;;
  }

  dimension: last_payment_date_c {
    type: date
    sql: ${TABLE}."LAST_PAYMENT_DATE_C" ;;
  }

  dimension: writeoff_invoices_c {
    type: string
    sql: ${TABLE}."WRITEOFF_INVOICES_C" ;;
  }

  dimension: writeoff_balance_c {
    type: string
    sql: ${TABLE}."WRITEOFF_BALANCE_C" ;;
  }

  dimension: payment_plan_completed_date_c {
    type: date
    sql: ${TABLE}."PAYMENT_PLAN_COMPLETED_DATE_C" ;;
  }

  dimension: payment_plan_per_month_amount_c {
    type: string
    sql: ${TABLE}."PAYMENT_PLAN_PER_MONTH_AMOUNT_C" ;;
  }

  dimension: payment_plan_date_effective_c {
    type: date
    sql: ${TABLE}."PAYMENT_PLAN_DATE_EFFECTIVE_C" ;;
  }

  dimension: ppa_for_rollup_c {
    type: number
    sql: ${TABLE}."PPA_FOR_ROLLUP_C" ;;
  }

  dimension: wob_for_rollup_c {
    type: number
    sql: ${TABLE}."WOB_FOR_ROLLUP_C" ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  set: detail {
    fields: [
      id,
      is_deleted,
      name,
      created_date_time,
      created_by_id,
      last_modified_date_time,
      last_modified_by_id,
      system_modstamp_time,
      last_activity_date,
      zuora_account_c,
      zuora_account_number_c,
      zuora_additional_email_addresses_c,
      zuora_allow_invoice_edit_c,
      zuora_auto_pay_c,
      zuora_balance_c,
      zuora_batch_c,
      zuora_bcd_setting_option_c,
      zuora_bill_cycle_day_c,
      zuora_bill_to_address_1_c,
      zuora_bill_to_address_2_c,
      zuora_bill_to_city_c,
      zuora_bill_to_country_c,
      zuora_bill_to_fax_c,
      zuora_bill_to_id_c,
      zuora_bill_to_name_c,
      zuora_bill_to_postal_code_c,
      zuora_bill_to_state_c,
      zuora_bill_to_work_email_c,
      zuora_bill_to_work_phone_c,
      zuora_communication_profile_id_c,
      zuora_credit_balance_c,
      zuora_credit_card_expiration_c,
      zuora_credit_card_number_c,
      zuora_currency_c,
      zuora_customer_service_rep_name_c,
      zuora_default_payment_method_c,
      zuora_entity_id_c,
      zuora_external_id_c,
      zuora_invoice_delivery_prefs_email_c,
      zuora_invoice_delivery_prefs_print_c,
      zuora_invoice_template_id_c,
      zuora_is_crm_id_change_processed_c,
      zuora_last_invoice_date_c,
      zuora_mrr_c,
      zuora_notes_c,
      zuora_parent_c,
      zuora_payment_gateway_c,
      zuora_payment_method_type_c,
      zuora_payment_term_c,
      zuora_purchase_order_number_c,
      zuora_sales_rep_name_c,
      zuora_sold_to_address_1_c,
      zuora_sold_to_address_2_c,
      zuora_sold_to_city_c,
      zuora_sold_to_country_c,
      zuora_sold_to_fax_c,
      zuora_sold_to_id_c,
      zuora_sold_to_name_c,
      zuora_sold_to_postal_code_c,
      zuora_sold_to_state_c,
      zuora_sold_to_work_email_c,
      zuora_sold_to_work_phone_c,
      zuora_status_c,
      zuora_tax_exempt_certificate_id_c,
      zuora_tax_exempt_certificate_type_c,
      zuora_tax_exempt_description_c,
      zuora_tax_exempt_effective_date_c,
      zuora_tax_exempt_expiration_date_c,
      zuora_tax_exempt_issuing_jurisdiction_c,
      zuora_tax_exempt_status_c,
      zuora_total_invoice_balance_c,
      zuora_zuora_id_c,
      stripe_card_token_c,
      stripe_customer_token_c,
      _fivetran_synced_time,
      most_recent_credit_memo_c,
      new_rsmrr_c,
      new_rsoverage_rate_c,
      most_recent_payment_c,
      base_fee_c,
      last_payment_date_c,
      writeoff_invoices_c,
      writeoff_balance_c,
      payment_plan_completed_date_c,
      payment_plan_per_month_amount_c,
      payment_plan_date_effective_c,
      ppa_for_rollup_c,
      wob_for_rollup_c,
      _fivetran_deleted
    ]
  }
}
