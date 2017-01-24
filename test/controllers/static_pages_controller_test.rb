require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get signIn" do
    get static_pages_signIn_url
    assert_response :success
  end

  test "should get dashboard" do
    get static_pages_dashboard_url
    assert_response :success
  end

end
