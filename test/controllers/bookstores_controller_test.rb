require 'test_helper'

class BookstoresControllerTest < ActionController::TestCase
  setup do
    @bookstore = bookstores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookstores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookstore" do
    assert_difference('Bookstore.count') do
      post :create, bookstore: { author: @bookstore.author, description: @bookstore.description, price: @bookstore.price, title: @bookstore.title }
    end

    assert_redirected_to bookstore_path(assigns(:bookstore))
  end

  test "should show bookstore" do
    get :show, id: @bookstore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookstore
    assert_response :success
  end

  test "should update bookstore" do
    patch :update, id: @bookstore, bookstore: { author: @bookstore.author, description: @bookstore.description, price: @bookstore.price, title: @bookstore.title }
    assert_redirected_to bookstore_path(assigns(:bookstore))
  end

  test "should destroy bookstore" do
    assert_difference('Bookstore.count', -1) do
      delete :destroy, id: @bookstore
    end

    assert_redirected_to bookstores_path
  end
end
