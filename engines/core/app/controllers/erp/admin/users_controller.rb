module Erp
  module Admin
    class UsersController < ApplicationController
      before_action :set_user, only: [:edit]

      # GET /admin/users/1/edit
      def edit
      end

      # PATCH/PUT admin/users/1
      def update
        if @user.update(user_params)
          flash[:notice] = 'User role update successfully'
        end
      end

      private

      def set_user
        @user = Erp::User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:admin)
      end
    end
  end
end
