view: customer_fact_order_activities_combined {
  derived_table: {
    sql: SELECT * FROM RUBY.CUSTOMERDATA.FACT_ORDERS_ACTIVITIES_COMBINED
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: 3_mos_retention_date {
    label: "3 Mos Retention Date"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      time,
      time_of_day,
      hour
    ]
    datatype: datetime
    sql: last_day(DATEADD(MONTH,3,${contract_effective_date}));;
  }

  # measure: week_1_minutes_used {
  #   type: number
  #   sql: IF ${date_date}>=${contract_effective_date} AND ${date_date}<=${week_1_usage_date_date}, SUM(${Total_RS_Mins});;
  # }

  # measure: customer_usage {
  #   type: number
  #   sql: ${week_1_minutes_used} / ${included_units} ;;
  # }

  measure: original_start_date  {
    label: "Original Start Date"
    type: date
    convert_tz: no
    sql: min(${effective_start_date}) ;;
  }

  measure: most_recent_cancel_date {
    label: "Most Recent Cancel Date"
    type: date
    convert_tz: no
    sql: max(${effective_end_date}) ;;
  }

  dimension: ukey {
    primary_key: yes
    type: string
    sql: ${TABLE}."UKEY" ;;
  }

  dimension_group: date {
    type: time
    sql: ${TABLE}."Date" ;;
  }

  dimension: crm_id {
    type: string
    sql: ${TABLE}."CRM_ID" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;
  }

  dimension: productname {
    type: string
    sql: ${TABLE}."PRODUCTNAME" ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}."PLAN_NAME" ;;
  }

  dimension: rate_plan_charge_id {
    type: string
    sql: ${TABLE}."RATE_PLAN_CHARGE_ID" ;;
  }

  dimension: mrr_total {
    type: number
    sql: ${TABLE}."MRR_TOTAL" ;;
  }

  dimension: included_units {
    type: number
    sql: ${TABLE}."INCLUDED_UNITS" ;;
  }

  dimension: start_date {
    type: date
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: end_date {
    type: date
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: effective_start_date {
    type: date
    sql: ${TABLE}."EFFECTIVE_START_DATE" ;;
  }

  dimension: effective_end_date {
    type: date
    sql: ${TABLE}."EFFECTIVE_END_DATE" ;;
  }

  dimension: contract_effective_date {
    type: date
    sql: ${TABLE}."CONTRACT_EFFECTIVE_DATE" ;;
  }

  dimension: order_date {
    type: date
    sql: ${TABLE}."ORDER_DATE" ;;
  }

  dimension_group: add_date {
    type: time
    sql: ${TABLE}."ADD_DATE" ;;
  }

  dimension_group: remove_date {
    type: time
    sql: ${TABLE}."REMOVE_DATE" ;;
  }

  dimension: add_order_id {
    type: string
    sql: ${TABLE}."ADD_ORDER_ID" ;;
  }

  dimension: bill_cycle_day {
    type: number
    sql: ${TABLE}."BILL_CYCLE_DAY" ;;
  }

  dimension: start_bill_cycle_date {
    type: date
    sql: ${TABLE}."START_BILL_CYCLE_DATE" ;;
  }

  dimension: end_bill_cycle_date {
    type: date
    sql: ${TABLE}."END_BILL_CYCLE_DATE" ;;
  }

  dimension: ib_total_calls {
    type: number
    sql: ${TABLE}."IB_TOTAL_CALLS" ;;
  }

  dimension: billable_time_seconds {
    type: number
    sql: ${TABLE}."BILLABLE_TIME_SECONDS" ;;
  }

  dimension: ob_billable_time_seconds {
    type: number
    sql: ${TABLE}."OB_BILLABLE_TIME_SECONDS" ;;
  }

  dimension: zuora_billable_minutes {
    type: number
    sql: ${TABLE}."ZUORA_BILLABLE_MINUTES" ;;
  }

  dimension: zuora_chats {
    type: number
    sql: ${TABLE}."ZUORA_CHATS" ;;
  }

  dimension: current_invoice_date {
    type: date
    sql: ${TABLE}."CURRENT_INVOICE_DATE" ;;
  }

  dimension: previous_invoice_date {
    type: date
    sql: ${TABLE}."PREVIOUS_INVOICE_DATE" ;;
  }

  dimension: next_invoice_date {
    type: date
    sql: ${TABLE}."NEXT_INVOICE_DATE" ;;
  }

  dimension: days_in_cycle {
    type: number
    sql: ${TABLE}."DAYS_IN_CYCLE" ;;
  }

  dimension: chats {
    type: number
    sql: ${TABLE}."CHATS" ;;
  }

  dimension: ob_assist {
    type: number
    sql: ${TABLE}."OB_ASSIST" ;;
  }

  dimension: ib_lead_calls {
    type: number
    sql: ${TABLE}."IB_LEAD_CALLS" ;;
  }

  dimension: ib_current_client_calls {
    type: number
    sql: ${TABLE}."IB_CURRENT_CLIENT_CALLS" ;;
  }

  dimension: ib_solicitor_calls {
    type: number
    sql: ${TABLE}."IB_SOLICITOR_CALLS" ;;
  }

  dimension: ib_robocall_calls {
    type: number
    sql: ${TABLE}."IB_ROBOCALL_CALLS" ;;
  }

  dimension: chats_lead {
    type: number
    sql: ${TABLE}."CHATS_LEAD" ;;
  }

  dimension: chats_actionable_support {
    type: number
    sql: ${TABLE}."CHATS_ACTIONABLE_SUPPORT" ;;
  }

  dimension: chats_non_actionable_support {
    type: number
    sql: ${TABLE}."CHATS_NON_ACTIONABLE_SUPPORT" ;;
  }

  dimension: chats_spam {
    type: number
    sql: ${TABLE}."CHATS_SPAM" ;;
  }

  dimension: chats_recruitment {
    type: number
    sql: ${TABLE}."CHATS_RECRUITMENT" ;;
  }

  dimension: customer_success_manager_c {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_C" ;;
  }

  dimension: csm_name {
    type: string
    sql: ${TABLE}."CSM_NAME" ;;
  }

  dimension: account_manager_c {
    type: string
    sql: ${TABLE}."ACCOUNT_MANAGER_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: customer_success_manager_name {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_NAME" ;;
  }

  dimension: customer_success_manager_employeeid {
    type: number
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_EMPLOYEEID" ;;
  }

  dimension: customer_success_manager_employee_code {
    type: number
    sql: ${TABLE}."CUSTOMER_SUCCESS_MANAGER_EMPLOYEE_CODE" ;;
  }

  dimension: account_owner_name {
    type: string
    sql: ${TABLE}."ACCOUNT_OWNER_NAME" ;;
  }

  dimension: account_owner_employeeid {
    type: number
    sql: ${TABLE}."ACCOUNT_OWNER_EMPLOYEEID" ;;
  }

  dimension: account_owner_employee_code {
    type: number
    sql: ${TABLE}."ACCOUNT_OWNER_EMPLOYEE_CODE" ;;
  }

  dimension: account_manager_name {
    type: string
    sql: ${TABLE}."ACCOUNT_MANAGER_NAME" ;;
  }

  dimension: account_manager_employeeid {
    type: number
    sql: ${TABLE}."ACCOUNT_MANAGER_EMPLOYEEID" ;;
  }

  dimension: account_manager_employee_code {
    type: number
    sql: ${TABLE}."ACCOUNT_MANAGER_EMPLOYEE_CODE" ;;
  }

  dimension: ob_spoofed_calls {
    type: number
    sql: ${TABLE}."OB_SPOOFED_CALLS" ;;
  }

  dimension: ob_textthread {
    type: number
    sql: ${TABLE}."OB_TEXTTHREAD" ;;
  }

  dimension: crm_id_link {
    label: "CRM ID Link"
    type: string
    sql: ${TABLE}."CRM_ID" ;;
    link: {
      label: "Link To Customer Usage Dashboard: {{ value }} "
      url: "https://rubyreceptionists.cloud.looker.com/dashboards/150?Crm%20ID={{customer_fact_order_activities_combined.crm_id | encode_url }}"
      icon_url: "https://www.google.com/s2/favicons?domain=https://www.ruby.com/"
    }
    html:
      <a href="https://rubyreceptionists.cloud.looker.com/dashboards/150?Crm%20ID={{customer_fact_order_activities_combined.crm_id._value | encode_url }}">{{ value }}</a>;;
  }

  measure: Sum_RS_Inbound_Minutes_Used {
    type: sum
    sql: ${billable_time_seconds}/60;;
    drill_fields: [detail*]
  }

  measure: Sum_RS_Outbound_Minutes_Used {
    type: sum
    sql: ${ob_billable_time_seconds}/60;;
    drill_fields: [detail*]
  }

  dimension: Total_RS_Mins {
    type: number
    sql: (${billable_time_seconds}+${ob_billable_time_seconds})/60;;
  }

  dimension: Total_RS_Seconds {
    description: "Sum of Inbound and outbound seconds"
    type: number
    sql: (${billable_time_seconds}+${ob_billable_time_seconds});;
  }

  dimension: Usage_Match {
    type: yesno
    description: "Show when Activities and Zuora Usage match"
    sql: ${Total_RS_Mins} =${TABLE}."ZUORA_BILLABLE_MINUTES" ;;
    }

  measure: Sum_Total_RS_Seconds {
    description: "Sum of Inbound and outbound mins "
    type: sum
    sql: (${Total_RS_Seconds});;
    drill_fields: [detail*]
  }

  measure: Sum_Total_RS_Minutes {
    type: sum
    sql: ${Total_RS_Mins};;
    drill_fields: [detail*]
  }

  measure: RS_Total_Calls {
    type: sum
    sql: ${ib_total_calls};;
    drill_fields: [detail*]
  }

  measure: Total_Chats {
    type: sum
    sql: ${chats};;
    drill_fields: [detail*]
  }

  measure: count_account {
    type: count_distinct
    sql: ${crm_id} ;;
  }

  measure: MRR_Total {
    type: sum
    sql: ${mrr_total} ;;
  }


  set: detail {
    fields: [
      ukey,
      date_time,
      crm_id,
      account_id,
      account_name,
      service_type,
      productname,
      plan_name,
      rate_plan_charge_id,
      mrr_total,
      included_units,
      start_date,
      end_date,
      effective_start_date,
      effective_end_date,
      contract_effective_date,
      order_date,
      add_date_time,
      remove_date_time,
      add_order_id,
      bill_cycle_day,
      start_bill_cycle_date,
      end_bill_cycle_date,
      ib_total_calls,
      billable_time_seconds,
      ob_billable_time_seconds,
      zuora_billable_minutes,
      zuora_chats,
      current_invoice_date,
      previous_invoice_date,
      next_invoice_date,
      days_in_cycle,
      chats,
      ob_assist,
      ib_lead_calls,
      ib_current_client_calls,
      ib_solicitor_calls,
      ib_robocall_calls,
      chats_lead,
      chats_actionable_support,
      chats_non_actionable_support,
      chats_spam,
      chats_recruitment,
      customer_success_manager_c,
      csm_name,
      account_manager_c,
      owner_id,
      customer_success_manager_name,
      customer_success_manager_employeeid,
      customer_success_manager_employee_code,
      account_owner_name,
      account_owner_employeeid,
      account_owner_employee_code,
      account_manager_name,
      account_manager_employeeid,
      account_manager_employee_code,
      ob_spoofed_calls,
      ob_textthread
    ]
  }
}
