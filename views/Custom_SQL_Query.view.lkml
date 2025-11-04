view: Custom_SQL_Query {
  derived_table: {
    sql: select

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

      sales.profit

      from

      super.orders_super as orders,

      super.sales_super as sales

      where orders.order_id = sales.order_id ;;
  }

  dimension: order_id {
    label: "order_id"
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: order_date {
    label: "order_date"
    type: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: ship_date {
    label: "ship_date"
    type: date
    sql: ${TABLE}.ship_date ;;
  }
  dimension: ship_mode {
    label: "ship_mode"
    type: string
    sql: ${TABLE}.ship_mode ;;
  }
  dimension: customer_id {
    label: "customer_id"
    type: string
    sql: ${TABLE}.customer_id ;;
  }
  dimension: quantity {
    label: "quantity"
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: customer_name {
    label: "customer_name"
    type: string
    sql: ${TABLE}.customer_name ;;
  }
  dimension: category {
    label: "category"
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: sub_category {
    label: "sub_category"
    type: string
    sql: ${TABLE}.sub_category ;;
  }
  dimension: product_name {
    label: "product_name"
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: sales {
    label: "sales"
    type: number
    sql: ${TABLE}.sales ;;
  }
  dimension: profit {
    label: "profit"
    type: number
    sql: ${TABLE}.profit ;;
  }
  measure: Profit_Ratio {
    label: "Profit Ratio"
    type: number
    sql: SUM(${profit}) / NULLIF(SUM(${sales}), 0);;
  }
  dimension: Category_Group {
    label: "Category Group"
    type: string
    sql: CASE ${category}
          WHEN 'Furniture' THEN 'Non Tech'
          WHEN 'Office Supplies' THEN 'Non Tech'
          WHEN 'Technology' THEN 'Tech'
          END ;;
  }
}
