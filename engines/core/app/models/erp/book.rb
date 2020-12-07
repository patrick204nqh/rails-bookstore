module Erp
  class Book < ApplicationRecord
    has_many :line_items, class_name: "Erp::LineItem"

    before_destroy :ensure_not_referenced_by_any_line_item

    private

    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
  end
end
