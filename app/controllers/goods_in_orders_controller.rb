class GoodsInOrdersController < ApplicationController
  def create
    #@order = current_user.order
    @goods_in_order = current_user.order.goods_in_orders.build(goods_in_order_params)
  #  @goods_in_order = GoodsInOrder.new(goods_in_order_params)
    #redirect_to current_user
  end

  private

  def goods_in_order_params
    params.require(:goods_in_order).permit(:box_count)
  end

end
