connection: "snowflake"

include: "*.view"
explore: account {}
explore: cancel_c {}
explore: case {}
explore: contact {}
explore: opportunity {}
explore: pricebook_2 {}
explore: product_2 {}
explore: project_c {}
explore: task {}
explore: user {}
explore: lead {}
explore: lead_history {}
datagroup: sales_ops_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_ops_default_datagroup
