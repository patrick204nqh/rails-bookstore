module Erp
  class Order < ApplicationRecord
    has_many :line_items, class_name: "Erp::User", dependent: :destroy
    belongs_to :user, class_name: "Erp::User"
  end
end
