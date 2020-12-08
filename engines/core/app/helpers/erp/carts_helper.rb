module Erp
  module CartsHelper
    def cart_list(cart)
      if cart
        cart.line_items.all
      else
        nil
      end
    end
  end
end
