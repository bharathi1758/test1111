- dashboard: sql_dashboard
  title: sql_dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OT7qLvwmTiYLh7FfaYKZL6
  elements:
  - title: Profit by Order Date
    name: Profit by Order Date
    model: Sales_Dashboard_V
    explore: Custom_SQL_Query
    type: looker_line
    fields: [Custom_SQL_Query.order_date, sum_of_profit]
    fill_fields: null
    sorts: [sum_of_profit desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: null
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 5
    dynamic_fields:
    - category: measure
      label: sum_of_profit
      type: sum
      _kind_hint: measure
      based_on: Custom_SQL_Query.profit
      _type_hint: number
      measure: sum_of_profit
  - title: Sales by Order Date
    name: Sales by Order Date
    model: Sales_Dashboard_V
    explore: Custom_SQL_Query
    type: looker_line
    fields: [Custom_SQL_Query.order_date, sum_of_sales]
    fill_fields: null
    sorts: [sum_of_sales desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: null
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 5
    dynamic_fields:
    - category: measure
      label: sum_of_sales
      type: sum
      _kind_hint: measure
      based_on: Custom_SQL_Query.sales
      _type_hint: number
      measure: sum_of_sales
