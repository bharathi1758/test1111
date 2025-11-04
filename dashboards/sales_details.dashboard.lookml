- dashboard: sales_details
  title: sales_details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OT7qLvwmTiYLh7FfaYKZL6
  elements:
  - title: Sales Details
    name: Sales Details
    model: Sales_Dashboard_V
    explore: Custom_SQL_Query
    type: looker_grid
    fields: [Custom_SQL_Query.Profit_Ratio, Custom_SQL_Query.Category_Group, Custom_SQL_Query.category,
      sum_of_profit, sum_of_sales, Custom_SQL_Query.sub_category]
    pivots: null
    fill_fields: null
    sorts: [sum_of_profit desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
    dynamic_fields:
    - category: measure
      label: sum_of_profit
      type: sum
      _kind_hint: measure
      based_on: Custom_SQL_Query.profit
      _type_hint: number
      measure: sum_of_profit
    - category: measure
      label: sum_of_sales
      type: sum
      _kind_hint: measure
      based_on: Custom_SQL_Query.sales
      _type_hint: number
      measure: sum_of_sales
