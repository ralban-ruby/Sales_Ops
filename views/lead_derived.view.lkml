view: lead_derived{
  derived_table: {
    sql: SELECT
        "Account".ID AS "Account ID",
        MIN(DATE(CASE
          WHEN "Lead".CO_R_DATE_C != NULL THEN "Lead".CO_R_DATE_C
          ELSE "Lead".CREATED_DATE  END )) AS "Original Cohort Date"
      FROM FIVETRAN_DB.SALESFORCE.LEAD AS "Lead"
      LEFT JOIN FIVETRAN_DB.SALESFORCE."ACCOUNT" AS "Account"
        ON "Lead".CONVERTED_ACCOUNT_ID = "Account".ID
      WHERE "Account".ID = '0011500001iiAqfAAE'
      GROUP BY "Account".ID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_id {
    type: string
    label: "Account ID"
    sql: ${TABLE}."Account ID" ;;
  }

  dimension_group: original_cohort_date {
    type: time
    label: "Original Cohort Date"
    convert_tz: no
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
    sql: ${TABLE}."Original Cohort Date" ;;
  }

  set: detail {
    fields: [account_id]
  }
}
