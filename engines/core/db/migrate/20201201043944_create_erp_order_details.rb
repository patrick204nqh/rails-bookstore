class CreateErpOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :erp_order_details do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
