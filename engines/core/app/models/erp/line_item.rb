module Erp
  class LineItem < ApplicationRecord
    belongs_to :book, class_name: "Erp::Book"
    belongs_to :cart, class_name: "Erp::Cart", optional: true
    belongs_to :order, class_name: "Erp::Order", optional: true

    accepts_nested_attributes_for :cart
  end
end
