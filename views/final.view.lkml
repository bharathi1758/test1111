view: final {
  sql_table_name: `demo_dataset.final` ;;

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }
  dimension: dim_product_key {
    type: string
    sql: ${TABLE}.dim_Product_key ;;
  }
  dimension: dim_vendor_key {
    type: string
    sql: ${TABLE}.dim_Vendor_key ;;
  }
  dimension: dss_create_time {
    type: string
    sql: ${TABLE}.dss_create_time ;;
  }
  dimension: dss_update_time {
    type: string
    sql: ${TABLE}.dss_update_time ;;
  }
  dimension: etlupdate_date_time {
    type: string
    sql: ${TABLE}.ETLUpdateDateTime ;;
  }
  dimension: material_auto_renewal {
    type: string
    sql: ${TABLE}.MaterialAutoRenewal ;;
  }
  dimension: material_cost {
    type: string
    sql: ${TABLE}.MaterialCost ;;
  }
  dimension: material_msrp {
    type: string
    sql: ${TABLE}.MaterialMSRP ;;
  }
  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }
  dimension: plant_number {
    type: string
    sql: ${TABLE}.PlantNumber ;;
  }
  measure: count {
    type: count
  }
}
