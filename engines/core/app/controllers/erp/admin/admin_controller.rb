module Erp
  module Admin
    class AdminController < Erp::ApplicationController
      before_action :authorization_user
      def index
        @users = Erp::User.all_except(current_user)
      end

      private

      def authorization_user
        if current_user.admin.nil?
          redirect_to erp.root_path
        end
      end
    end
  end
end