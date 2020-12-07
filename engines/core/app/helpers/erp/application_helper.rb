module Erp
  module ApplicationHelper
    def check_admin?(user)
      if user.admin
        return 'Admin'
      else
        return 'Normal'
      end
    end

    def options_for_select_helper
      [
        ['Admin', true],
        ['Normal', false]
      ]
    end

    def cart_count
      count = Erp::LineItem.where(cart_id: session[:cart_id]).count
      if count > 0
        return "(#{count})"
      else
        return ""
      end
    end
  end
end