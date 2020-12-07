module Erp
  class Cart < ApplicationRecord
    has_many :line_items, class_name: "Erp::LineItem", dependent: :destroy

    def add_book(book)
      current_book = line_items.find_by(book_id: book.id)
      if current_book
        current_book.quantity += 1
      else
        current_book = line_items.build(book_id: book.id)
      end
      current_book
    end
  end
end
