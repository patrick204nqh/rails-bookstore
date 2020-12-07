class AddCartRefToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_line_items, :cart, foreign_key: { to_table: :erp_carts }
  end
end
