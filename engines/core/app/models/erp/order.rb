module Erp
  class Order < ApplicationRecord
    belongs_to :user, class_name: "Erp::User"
    has_many :details, dependent: :destroy, class_name: "Erp::OrderDetail"
  end
end
