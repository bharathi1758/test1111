view: test {
  sql_table_name: `demo_dataset.test` ;;

  dimension: levelcode {
    type: string
    sql: ${TABLE}.levelcode ;;
  }
  dimension: leveldescription {
    type: string
    sql: ${TABLE}.leveldescription ;;
  }
  dimension: levelnumber {
    type: number
    sql: ${TABLE}.levelnumber ;;
  }
  measure: count {
    type: count
  }
}
