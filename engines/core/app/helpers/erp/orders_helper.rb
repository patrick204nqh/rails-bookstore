module Erp
  module OrdersHelper

    def total_price(order)
      total_price = 0
      order.line_items do |item|
        total_price += item.book.price * item.quantity
      end
      total_price
    end

  end
end
