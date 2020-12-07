class AddQuantityToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :erp_line_items, :quantity, :integer, default: 1
  end
end
