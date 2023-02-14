view: lead_history {
    derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.LEAD_HISTORY WHERE IS_DELETED <> 1
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

    dimension: lead_id {
      type: string
      sql: ${TABLE}."LEAD_ID" ;;
    }

    dimension: created_by_id {
      type: string
      sql: ${TABLE}."CREATED_BY_ID" ;;
    }

    dimension_group: created_date {
      type: time
      sql: ${TABLE}."CREATED_DATE" ;;
    }

    dimension: field {
      type: string
      sql: ${TABLE}."FIELD" ;;
    }

    dimension: old_value {
      type: string
      sql: ${TABLE}."OLD_VALUE" ;;
    }

    dimension: new_value {
      type: string
      sql: ${TABLE}."NEW_VALUE" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: data_type {
      type: string
      sql: ${TABLE}."DATA_TYPE" ;;
    }

    set: detail {
      fields: [
        id,
        is_deleted,
        lead_id,
        created_by_id,
        created_date_time,
        field,
        old_value,
        new_value,
        _fivetran_synced_time,
        data_type
      ]
    }
  }
