require_dependency "erp/application_controller"
require "erp/concerns/current_cart"
require "securerandom"

module Erp
  class OrdersController < ApplicationController
    include OrdersHelper
    include CurrentCart
    before_action :set_cart, only: [:new, :create]
    before_action :ensure_cart_isnt_empty, only: :new
    before_action :set_order, only: [:show, :edit, :update, :destroy]

    # GET /orders
    def index
      @orders = Erp::Order.get_orders(current_user)
    end

    # GET /orders/1
    def show
    end

    # GET /orders/new
    def new
      @order = Order.new
    end

    # GET /orders/1/edit
    def edit
    end

    # POST /orders
    def create
      @order = Order.new(code: SecureRandom.hex(10), user_id: current_user.id)
      @order.add_line_items_from_cart(@cart)
      @order.total = total_price(@order)

      if @order.save
        Erp::Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        redirect_to erp.root_path, notice: 'Thank you for your order'
      else
        render :new
      end
    end

    # PATCH/PUT /orders/1
    def update
      if @order.update(order_params)
        redirect_to @order, notice: 'Order was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /orders/1
    def destroy
      @order.destroy
      redirect_to orders_url, notice: 'Order was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_order
        @order = Order.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      # def order_params
      #   params.require(:order).permit(:code)
      # end

      def ensure_cart_isnt_empty
        if @cart.line_items.empty?
          redirect_to erp.root_path, notice: 'Your cart is empty, please choose some books.'
        end
      end
  end
end
