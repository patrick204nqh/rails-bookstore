class AddBookRefToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :erp_line_items, :book, foreign_key: { to_table: :erp_books }
  end
end
