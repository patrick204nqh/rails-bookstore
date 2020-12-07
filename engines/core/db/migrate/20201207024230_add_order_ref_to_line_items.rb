class AddOrderRefToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_line_items, :order, foreign_key: { to_table: :erp_orders }
  end
end
