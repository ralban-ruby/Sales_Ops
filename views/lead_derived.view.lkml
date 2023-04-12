view: lead_derived {
  derived_table: {
    sql:
      SELECT
        id,
        MIN(DATE(adjusted_cor_date)) AS original_cohort_date
      FROM
        lead
      GROUP BY
        id;;
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
