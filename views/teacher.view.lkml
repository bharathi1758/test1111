view: teacher {
  sql_table_name: `demo_dataset.teacher` ;;
  drill_fields: [teacher_id]

  dimension: teacher_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Teacher_ID ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension_group: joined {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Joined_Date ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }
  measure: count {
    type: count
    drill_fields: [teacher_id, name]
  }
}
