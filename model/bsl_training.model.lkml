connection: "bigquery_public_data_looker"

include: "/views/*.view.lkml"


explore: vw_order_details {}
