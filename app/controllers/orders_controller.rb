class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy]
  before_action :correct_user,   only: :destroy

  def new
    @order = Order.new #???????
    @user = current_user
  end

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      #flash[:success] = "Order created!"
      redirect_to new_boxes_path
    else
      render 'static_pages/home'
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def destroy
    @order.destroy
    flash[:success] = "Order deleted"
    redirect_to request.referrer || root_url
  end

  private

  def order_params
    params.require(:order).permit(:address, :payment_method, :delivery_method, :comment)
  end

  def correct_user
    @order = current_user.orders.find_by(id: params[:id])
    redirect_to root_url if @order.nil?
  end
end
