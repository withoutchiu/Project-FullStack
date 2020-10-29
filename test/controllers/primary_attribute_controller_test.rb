require 'test_helper'

class PrimaryAttributeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get primary_attribute_index_url
    assert_response :success
  end

  test "should get show" do
    get primary_attribute_show_url
    assert_response :success
  end

end
