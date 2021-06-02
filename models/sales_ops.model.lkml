connection: "snowflake"

include: "*.view"
explore: account {hidden:yes}
explore: cancel_c {hidden:yes}
explore: case {hidden:yes}
explore: contact {hidden:yes}
explore: opportunity {hidden:yes}
explore: pricebook_2 {hidden:yes}
explore: product_2 {hidden:yes}
explore: project_c {hidden:yes}
explore: task {hidden:yes}
explore: user {hidden:yes}
explore: lead {hidden:yes}
explore: lead_history {hidden:yes}
datagroup: sales_ops_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


# #explore: account_lead {
#   join: account {
#     relationship: one_to_one
#     type: left_outer
#     sql_on: ${cancel_c.account_c} = ${account.id} ;;
#   }
#   join: user {
#     view_label: "Cancel Creator User Details"
#     relationship: one_to_one
#     type: left_outer
#     sql_on: ${user.id} = ${cancel_c.created_by_id} ;;
#   }
#   join: opportunity {
#     relationship: one_to_one
#     type: left_outer
#     sql_on: ${cancel_c.account_c} = ${opportunity.account_id} ;;
#   }
#   join: mrr_details_combined {
#     relationship: many_to_many
#     type: full_outer
#     sql_on: ${mrr_details_combined.crm_id} = ${cancel_c.account_c} ;;
#   }
#   join: mrr_details_derived {
#     relationship: many_to_many
#     type: left_outer
#     sql_on: ${mrr_details_combined.crm_id} = ${cancel_c.account_c} ;;
#   }



persist_with: sales_ops_default_datagroup
