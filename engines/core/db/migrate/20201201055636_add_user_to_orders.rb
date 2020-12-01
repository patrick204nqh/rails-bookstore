class AddUserToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_orders, :user, foreign_key: { to_table: :erp_users }
  end
end
