module Erp
  class UsersController < ApplicationController
    before_action :set_user, only: [:update, :destroy, :edit]
    def index
    end

    def show
      @user = Erp::User.find(current_user.id)
    end

    def edit
    end

    def update
      if @user.update_attributes(user_params)
        redirect_to @user
        flash[:notice] = 'User profile update successfully'
      end
    end

    def destroy
      @user.destroy
      redirect_to admin_url, notice: 'User was successfully destroyed.'
    end

    private

    def set_user
      @user = Erp::User.find(params[:id]) rescue nil
    end

    def user_params
      params.require(:user).permit(:avatar, :email)
    end
  end
end