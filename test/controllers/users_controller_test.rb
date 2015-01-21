require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user1 = users(:one)
    @user2 = users(:two)
    @update = {
      email: 'user3@example.com',
      password: BCrypt::Password.create('password3'),
      name: 'User 3'
    }
    @existing_email = @update.merge({ email: @user1.email })
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: @update
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should not create user if email already exists" do
    assert_nothing_raised do
      assert_no_difference('User.count') do
        post :create, user: @existing_email
      end
    end
    assert_not_nil assigns(:user)
    assert_not_empty assigns(:user).errors.messages
    assert_equal assigns(:user).errors.messages, {:email => ['has already been taken'], :password=>[], :password_confirmation=>[], :name=>[]}
    assert flash.empty?
  end

  test "should show user" do
    get :show, id: @user1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user1
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user1, user: @update
    assert_redirected_to user_path(assigns(:user))
  end

  test "should not update user if email already exists" do
    assert_nothing_raised do
      assert_no_difference('Category.count') do
        patch :update, id: @user2, user: @existing_email
      end
    end
    assert_not_nil assigns(:user)
    assert_not_empty assigns(:user).errors.messages
    assert_equal assigns(:user).errors.messages, {:email=>['has already been taken'], :password=>[], :password_confirmation=>[], :name=>[]}
    assert flash.empty?
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user1
    end

    assert_redirected_to users_path
  end
end
