class AddBookToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_order_details, :book, foreign_key: { to_table: :erp_books }
  end
end
