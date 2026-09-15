view: sales_super {
  sql_table_name: `cg-acis-ind-sandbox.super.sales_super` ;;

  dimension: Order_ID {
    label: "Order ID"
    type: number
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: Customer_Name {
    label: "Customer Name"
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }
  dimension: Category {
    label: "Category1"
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: Sub_Category {
    label: "Sub Category"
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  dimension: Product_Name {
    label: "Product Name"
    type: string
    sql: ${TABLE}.Product_Name ;;
  }
  dimension: Sales {
    label: "Sales"
    type: number
    sql: ${TABLE}.Sales ;;
  }
  dimension: Profit {
    label: "Profit"
    type: number
    sql: ${TABLE}.Profit ;;
  }
    measure: total_sales {
      label: "Total Sales"
      type: sum
      sql: ${TABLE}.Sales ;;

      drill_fields: [
        Order_ID,
        Customer_Name,
        Product_Name,
        Category,
        Sub_Category
      ]
  }
}
