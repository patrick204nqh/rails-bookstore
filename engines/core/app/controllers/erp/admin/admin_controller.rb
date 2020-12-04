module Erp
  module Admin
    class AdminController < Erp::ApplicationController
      before_action :authorization_user
      def index
        @users = Erp::User.order('created_at DESC').limit(5)
      end

      private

      def authorization_user
        if current_user.admin.nil?
          redirect_to '/'
        end
      end
    end
  end
end