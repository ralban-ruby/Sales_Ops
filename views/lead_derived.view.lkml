view: lead_derived {
  derived_table: {
    sql:
      SELECT
        id,
        MIN(DATE(IF(CoR_Date__c=null,created_date,CoR_Date__c))) AS original_cohort_date
      FROM
        lead ;;
  }
  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: original_cohort_date{
    label: "Original Cohort Date"
    convert_tz: no
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.original_cohort_date ;;
  }
}
