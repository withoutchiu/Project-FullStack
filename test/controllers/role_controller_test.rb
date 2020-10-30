require 'test_helper'

class RoleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get role_index_url
    assert_response :success
  end

  test "should get show" do
    get role_show_url
    assert_response :success
  end

end
