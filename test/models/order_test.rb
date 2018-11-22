require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @order = @user.orders.build(address: "ggggg", user_id: @user.id)
  end

  test "should be valid" do
    assert @order.valid?
  end

  test "user id should be present" do
    @order.user_id = nil
    assert_not @order.valid?
  end

  test "order should be most recent first" do
    assert_equal orders(:most_recent), Order.first
  end

end
