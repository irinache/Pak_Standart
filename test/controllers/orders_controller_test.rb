require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @order = orders(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Order.count' do
      post orders_path, params: { order: { address: "ff" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Order.count' do
      delete order_path(@order)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy for wrong micropost" do
    log_in_as(users(:michael))
    order = orders(:ants)
    assert_no_difference 'Order.count' do
      delete order_path(order)
    end
    assert_redirected_to root_url
  end
end
