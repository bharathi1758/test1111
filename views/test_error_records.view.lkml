view: test_error_records {
  sql_table_name: `demo_dataset.test_error_records` ;;

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.attributes ;;
  }
  dimension: error_message {
    type: string
    sql: ${TABLE}.errorMessage ;;
  }
  dimension: payload_bytes {
    type: string
    sql: ${TABLE}.payloadBytes ;;
  }
  dimension: payload_string {
    type: string
    sql: ${TABLE}.payloadString ;;
  }
  dimension: stacktrace {
    type: string
    sql: ${TABLE}.stacktrace ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
  }
}

view: test_error_records__attributes {

  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: test_error_records__attributes {
    type: string
    hidden: yes
    sql: test_error_records__attributes ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}
