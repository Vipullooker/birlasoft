view: vw_order_details {
  view_label: "Ordered Details"

  sql_table_name: `cloud-training-demos.looker_ecomm.order_items` ;;


  dimension: order_prim_key {
    label: "ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: created_at_date {
    type: date
    sql: ${TABLE}.created_at ;;
  }
  
  dimension: created_at_year {
    type: date_year
    sql: ${TABLE}.created_at ;;
  }
  
  dimension_group: created_at_group {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_at_formatted {
    sql: (FORMAT_TIMESTAMP('%Y/%m', vw_order_details.created_at )) ;;
  }
  
  
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  
  measure: tot_sale_price {
    type: sum
  value_format_name: decimal_0
    sql: ${TABLE}.sale_price ;;
  }
}
