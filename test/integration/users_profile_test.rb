require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
  end

  test "profile display" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    #assert_select 'title', full_title(@user.name)
    #assert_select 'h1', text: @user.name
    #assert_select 'h1>img.gravatar'
    assert_match @user.orders.count.to_s, response.body
    assert_select 'div.pagination'
    @user.orders.paginate(page: 1).each do |order|
      assert_match order.address, response.body
    end
  end
end
