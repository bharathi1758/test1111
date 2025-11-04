view: custom_sql {
  derived_table: {
    sql:
    select
orders.order_id,
orders.order_date,
orders.ship_date,
orders.ship_mode,
orders.customer_id,
orders.quantity,
sales.customer_name,
sales.category,
sales.sub_category,
sales.product_name,
sales.sales,
sales.profit,
from
super.orders_super as orders,
super.sales_super as sales
where orders.order_id = sales.order_id;;
  }

dimension: order_id {
  primary_key: yes
  type: number
  sql: ${TABLE}.order_id ;;
}
  dimension_group: order_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.order_date ;;
    label: "Order Date"
  }

  dimension_group: ship_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.ship_date ;;
    label: "Ship Date"
  }
  dimension: ship_mode {
    type: string
    sql: ${TABLE}.ship_mode ;;
    label: "Shipping Mode"
  }
  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
    #primary_key: yes
    label: "Customer ID"
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
    label: "Customer Name"
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    label: "Product Category"
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
    label: "Product Sub-Category"
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
    label: "Product Name"
  }
dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.sales ;;
    value_format_name: usd # Formats as currency
    label: "Total Sales"
  }
  measure: profit {
    type: sum
    sql: ${TABLE}.profit ;;
    value_format_name: usd
    label: "Total Profit"
  }

}
