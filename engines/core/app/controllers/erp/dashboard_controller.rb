module Erp
  class DashboardController < ApplicationController
    def index
      @books = Erp::Book.all
    end
  end
end
