view: product_2 {
  sql_table_name: "SALESFORCE"."PRODUCT_2"
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

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: display_url {
    type: string
    sql: ${TABLE}."DISPLAY_URL" ;;
  }

  dimension: external_data_source_id {
    type: string
    sql: ${TABLE}."EXTERNAL_DATA_SOURCE_ID" ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}."EXTERNAL_ID" ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}."FAMILY" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}."PRODUCT_CODE" ;;
  }

  dimension: quantity_unit_of_measure {
    type: string
    sql: ${TABLE}."QUANTITY_UNIT_OF_MEASURE" ;;
  }

  dimension: stock_keeping_unit {
    type: string
    sql: ${TABLE}."STOCK_KEEPING_UNIT" ;;
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

  dimension: zqu_allow_feature_changes_c {
    type: yesno
    sql: ${TABLE}."ZQU_ALLOW_FEATURE_CHANGES_C" ;;
  }

  dimension: zqu_billing_entity_c {
    type: string
    sql: ${TABLE}."ZQU_BILLING_ENTITY_C" ;;
  }

  dimension: zqu_catalog_sync_history_c {
    type: string
    sql: ${TABLE}."ZQU_CATALOG_SYNC_HISTORY_C" ;;
  }

  dimension: zqu_category_c {
    type: string
    sql: ${TABLE}."ZQU_CATEGORY_C" ;;
  }

  dimension: zqu_deleted_c {
    type: yesno
    sql: ${TABLE}."ZQU_DELETED_C" ;;
  }

  dimension_group: zqu_effective_end_date_c {
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
    sql: ${TABLE}."ZQU_EFFECTIVE_END_DATE_C" ;;
  }

  dimension_group: zqu_effective_start_date_c {
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
    sql: ${TABLE}."ZQU_EFFECTIVE_START_DATE_C" ;;
  }

  dimension: zqu_sku_2_c {
    type: string
    sql: ${TABLE}."ZQU_SKU_2_C" ;;
  }

  dimension: zqu_sku_c {
    type: string
    sql: ${TABLE}."ZQU_SKU_C" ;;
  }

  dimension: zqu_sync_message_c {
    type: string
    sql: ${TABLE}."ZQU_SYNC_MESSAGE_C" ;;
  }

  dimension: zqu_sync_status_c {
    type: string
    sql: ${TABLE}."ZQU_SYNC_STATUS_C" ;;
  }

  dimension: zqu_type_c {
    type: string
    sql: ${TABLE}."ZQU_TYPE_C" ;;
  }

  dimension: zqu_zuora_id_c {
    type: string
    sql: ${TABLE}."ZQU_ZUORA_ID_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
