module CurrentCart

  private 

  def set_cart
    @cart = Erp::Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Erp::Cart.create
    session[:cart_id] = @cart.id
  end
end
