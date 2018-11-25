class BoxesController < ApplicationController
  def new
    @box = Box.new
    @goods_in_order = @box.goods_in_orders.build
  end

  def create
    @box = Box.new(box_params)
    @goods_in_order
    if @box.save
     # flash[:success] = "Micropost created!"
    else
      # flash[:success] = "Error!"
    end
    redirect_to current_user
  end

  def show
    @box = Box.find(params[:id])
  end

  private
  def box_params
    params.require(:box).permit(:length, :width, :height, :density, :color,
                                :special_holes, goods_in_orders_attributes: [:order_id, :box_count, :box_id])
  end

end
