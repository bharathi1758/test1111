view: student {
  sql_table_name: `demo_dataset.student` ;;

  dimension_group: date_of_test {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Date_of_test ;;
  }
  dimension: pass_fail {
    type: yesno
    sql: ${TABLE}.Pass_Fail ;;
  }
  dimension: per_decimal {
    type: number
    sql: ${TABLE}.Per_decimal ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }
  measure: count {
    type: count
  }
}
