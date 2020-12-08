module Erp
  class Order < ApplicationRecord
    has_many :line_items, class_name: "Erp::LineItem", dependent: :destroy
    belongs_to :user, class_name: "Erp::User"
    scope :get_orders, ->(user) { where(user_id: user).order('created_at DESC') }

    def add_line_items_from_cart(cart)
      cart.line_items.each do |item|
        item.cart_id = nil
        line_items << item
      end
    end
  end
end
