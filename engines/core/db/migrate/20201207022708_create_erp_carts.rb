class CreateErpCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :erp_carts do |t|

      t.timestamps
    end
  end
end
