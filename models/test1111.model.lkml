connection: "bigquery"

# include all the views
include: "/views/**/*.view.lkml"
include: "/bussiness_pulse.dashboard.lookml"

datagroup: test1111_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test1111_default_datagroup

explore: final {}

explore: test {}

explore: sales {
  join: orders {
    type: left_outer
    sql_on: ${sales.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: teacher {}

explore: student {}

explore: test_error_records {
    join: test_error_records__attributes {
      view_label: "Test Error Records: Attributes"
      sql: LEFT JOIN UNNEST(${test_error_records.attributes}) as test_error_records__attributes ;;
      relationship: one_to_many
    }
}

explore: orders {}
explore: custom_sql {}
