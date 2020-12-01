class CreateErpOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :erp_orders do |t|
      t.string :code

      t.timestamps
    end
  end
end
