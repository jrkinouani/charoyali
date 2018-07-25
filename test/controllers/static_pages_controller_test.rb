require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get static_pages_accueil_url
    assert_response :success
  end

  test "should get ventes" do
    get static_pages_ventes_url
    assert_response :success
  end

  test "should get conditions" do
    get static_pages_conditions_url
    assert_response :success
  end

  test "should get FAQ" do
    get static_pages_FAQ_url
    assert_response :success
  end

  test "should get mentions" do
    get static_pages_mentions_url
    assert_response :success
  end

  test "should get apropos" do
    get static_pages_apropos_url
    assert_response :success
  end

  test "should get pro" do
    get static_pages_pro_url
    assert_response :success
  end

end
