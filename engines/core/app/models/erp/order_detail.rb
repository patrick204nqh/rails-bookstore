module Erp
  class OrderDetail < ApplicationRecord
    belongs_to :order, class_name: "Erp::Order"
  end
end
