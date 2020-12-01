class CreateErpBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :erp_books do |t|
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
