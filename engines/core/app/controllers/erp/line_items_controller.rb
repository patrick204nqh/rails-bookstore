require_dependency "erp/application_controller"
require "erp/concerns/current_cart"

module Erp
  class LineItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart
    before_action :set_line_item, only: [:show, :edit, :update, :destroy]

    # GET /line_items
    def index
      @line_items = LineItem.all
    end

    # GET /line_items/1
    def show
    end

    # GET /line_items/new
    def new
      @line_item = LineItem.new
    end

    # GET /line_items/1/edit
    def edit
    end

    # POST /line_items
    def create
      book = Erp::Book.find(params[:book_id])
      @line_item = @cart.line_items.build(book: book)
      logger.info '============================'
      logger.info @cart

      logger.info @cart.line_items

      if @line_item.save
        redirect_to erp.root_path, notice: 'Line item was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /line_items/1
    def update
      if @line_item.update(line_item_params)
        redirect_to @line_item, notice: 'Line item was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /line_items/1
    def destroy
      @line_item.destroy
      redirect_to line_items_url, notice: 'Line item was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_line_item
        @line_item = Erp::LineItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def line_item_params
        params.fetch(:line_item, {})
      end

      # def set_cart
      #  @cart = Erp::Cart.find(session[:cart_id])
      # rescue ActiveRecord::RecordNotFound
      #  @cart = Erp::Cart.create
      #  session[:cart_id] = @cart.id
      # end
  end
end
