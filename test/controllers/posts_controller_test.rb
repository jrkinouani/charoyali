require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { address_end: @post.address_end, address_start: @post.address_start, date_end: @post.date_end, date_start: @post.date_start, desc: @post.desc, hour_end: @post.hour_end, hour_start: @post.hour_start, price: @post.price, title: @post.title } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { address_end: @post.address_end, address_start: @post.address_start, date_end: @post.date_end, date_start: @post.date_start, desc: @post.desc, hour_end: @post.hour_end, hour_start: @post.hour_start, price: @post.price, title: @post.title } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
