view: vw_order_details {

  sql_table_name: `cloud-training-demos.looker_ecomm.order_items` ;;


  dimension: order_prim_key {
    primary_key: yes
    sql: ${TABLE}.id ;;
  }


}
