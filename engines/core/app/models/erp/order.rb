module Erp
  class Order < ApplicationRecord
    belongs_to :user, class_name: "Erp::User"
  end
end
