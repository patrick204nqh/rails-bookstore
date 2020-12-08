require 'erp/concerns/current_cart'

module Erp
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include CurrentCart

    before_action :authenticate_user!, :set_cart
  end
end
