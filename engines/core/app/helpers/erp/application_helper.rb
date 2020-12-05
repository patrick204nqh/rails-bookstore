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
  end
end