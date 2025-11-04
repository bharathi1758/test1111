- dashboard: sales_dashboard
  title: sales_dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OT7qLvwmTiYLh7FfaYKZL6
  elements:
  - title: Average Sales by Category
    name: Average Sales by Category
    model: Sales_Dashboard_V
    explore: orders_super
    type: looker_column
    fields: [sales_super.Category, avg_of_Sales]
    sorts: [avg_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: avg_of_Sales
      type: avg
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: avg_of_Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: avg_Sales, orientation: left, series: [{axisId: avg_Sales, id: avg_Sales,
            name: avg_Sales}], showLabels: true, showValues: true, valueFormat: '0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Total Sales by Sub Category
    name: Total Sales by Sub Category
    model: Sales_Dashboard_V
    explore: orders_super
    type: looker_column
    fields: [sum_of_Sales, sales_super.Sub_Category]
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: sum_Sales, orientation: left, series: [{axisId: sum_Sales, id: sum_Sales,
            name: sum_Sales}], showLabels: true, showValues: true, valueFormat: '0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
