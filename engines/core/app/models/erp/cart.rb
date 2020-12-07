module Erp
  class Cart < ApplicationRecord
    has_many :line_items, class_name: "Erp::LineItem", dependent: :destroy  
  end
end
