module Erp
  class LineItem < ApplicationRecord
    belongs_to :book, class_name: "Erp::Book"
    belongs_to :cart, class_name: "Erp::Cart"
  end
end
