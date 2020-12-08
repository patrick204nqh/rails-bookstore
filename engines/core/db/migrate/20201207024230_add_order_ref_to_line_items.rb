class AddOrderRefToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_line_items, :order, foreign_key: { to_table: :erp_orders }
    change_column :erp_line_items, :cart_id, :integer, null: true
  end
end
