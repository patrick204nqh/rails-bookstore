class AddTotalToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :erp_orders, :total, :integer, default: 0
  end
end
