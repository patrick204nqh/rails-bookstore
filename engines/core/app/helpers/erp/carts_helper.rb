module Erp
  module CartsHelper

    def cart_list(cart)
      cart.line_items.all
    end

  end
end
