require 'test_helper'

class FirstlivreursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get firstlivreurs_new_url
    assert_response :success
  end

  test "should get thanks" do
    get firstlivreurs_thanks_url
    assert_response :success
  end

end
