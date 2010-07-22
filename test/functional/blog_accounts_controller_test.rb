require 'test_helper'

class BlogAccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_account" do
    assert_difference('BlogAccount.count') do
      post :create, :blog_account => { }
    end

    assert_redirected_to blog_account_path(assigns(:blog_account))
  end

  test "should show blog_account" do
    get :show, :id => blog_accounts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => blog_accounts(:one).to_param
    assert_response :success
  end

  test "should update blog_account" do
    put :update, :id => blog_accounts(:one).to_param, :blog_account => { }
    assert_redirected_to blog_account_path(assigns(:blog_account))
  end

  test "should destroy blog_account" do
    assert_difference('BlogAccount.count', -1) do
      delete :destroy, :id => blog_accounts(:one).to_param
    end

    assert_redirected_to blog_accounts_path
  end
end
