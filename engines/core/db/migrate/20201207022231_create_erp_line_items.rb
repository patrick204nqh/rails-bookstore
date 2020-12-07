class CreateErpLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :erp_line_items do |t|

      t.timestamps
    end
  end
end
