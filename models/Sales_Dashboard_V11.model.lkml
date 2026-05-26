#connection: "BigQuery"
connection: "bigquery"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard"

explore: orders_super{
  join: sales_super {
    type: left_outer
    sql_on: ${orders_super.Order_ID} = ${sales_super.Order_ID} ;;
    relationship: one_to_many
  }
}
#explore: hr_employe_1 {}

explore: Custom_SQL_Query {}
