class AddAvatarToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :erp_users, :avatar, :string
  end
end
