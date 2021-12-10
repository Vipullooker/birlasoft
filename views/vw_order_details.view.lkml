view: vw_order_details {
  view_label: "Ordered Details"

  sql_table_name: `cloud-training-demos.looker_ecomm.order_items` ;;


  dimension: order_prim_key {
    label: "ID"
    view_label: "Ordered View"
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

}
