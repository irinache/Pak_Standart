require 'test_helper'

class OrderInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "order interface" do
    log_in_as(@user)
    get user_path(users(:michael))
    assert_select 'div.pagination'
    # Invalid submission
   # assert_no_difference 'Order.count' do
   #   post orders_path, params: { order: { address: "" } }
  #  end
   # assert_select 'div#error_explanation'
    # Valid submission
    address = "This micropost really ties the room together"
    assert_difference 'Order.count', 1 do
      post orders_path, params: { order: { address: address } }
    end

    # Delete
    get user_path(users(:michael))
    assert_select 'a', text: 'delete'
    first_order = @user.orders.paginate(page: 1).first
    assert_difference 'Order.count', -1 do
      delete order_path(first_order)
    end
  end
end
