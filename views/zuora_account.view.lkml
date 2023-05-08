view: zuora_account {
  sql_table_name: "ZUORA_PROD"."ACCOUNT"
  ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: crm_id {
    type: string
    sql: ${TABLE}."CRM_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: mrr {
    label: "MRR"
    type: number
    sql: ${TABLE}."MRR" ;;
  }

}
