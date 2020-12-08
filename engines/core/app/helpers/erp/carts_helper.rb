module Erp
  module CartsHelper
    def cart_list(cart)
      if cart
        cart.line_items.all
      else
        nil
      end
    end

    def cart_total(list_items)
      total = 0
      if list_items
        list_items.each do |item|
          total += item.book.price * item.quantity
        end
      end
      total
    end
  end
end
