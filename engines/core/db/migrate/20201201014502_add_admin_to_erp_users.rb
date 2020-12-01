class AddAdminToErpUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :erp_users, :admin, :boolean
  end
end
