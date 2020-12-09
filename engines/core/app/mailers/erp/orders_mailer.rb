module Erp
  class OrdersMailer < ApplicationMailer
    def confirm_order_success(user)
      @user = user
      mail(to: @user.email, subject: 'You had ordered successfully')
    end
  end
end