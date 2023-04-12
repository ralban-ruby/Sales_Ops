view: lead_derived {
  derived_table: {
    sql:
      SELECT
        id,
        MIN(DATE(CASE WHEN CO_R_DATE_C != NULL THEN CO_R_DATE_C ELSE CREATED_DATE END)) AS original_cohort_date
      FROM
        lead ;;
  }
  dimension: id {
    type: string
    primary_key: yes
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
