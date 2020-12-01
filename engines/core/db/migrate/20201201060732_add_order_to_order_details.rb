class AddOrderToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_order_details, :order, foreign_key: { to_table: :erp_orders }
  end
end
