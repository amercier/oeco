require 'test_helper'

class Admin::CategoriesControllerTest < ActionController::TestCase
  setup do
    @category1 = categories(:one)
    @category2 = categories(:two)
    @update = {
      name: 'Category 3'
    }
    @existing_name = @update.merge({ name: @category1.name })
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count', 1) do
      post :create, category: @update
    end

    assert_redirected_to admin_category_path(assigns(:category))
  end

  test "should not create category if name already exists" do
    assert_nothing_raised do
      assert_no_difference('Category.count') do
        post :create, category: @existing_name
      end
    end
    assert_not_nil assigns(:category)
    assert_not_empty assigns(:category).errors.messages
    assert_equal assigns(:category).errors.messages, {:name => ['has already been taken']}
    assert flash.empty?
  end

  test "should show category" do
    get :show, id: @category1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category1
    assert_response :success
  end

  test "should update category" do
    patch :update, id: @category1, category: @update
    assert_redirected_to admin_category_path(assigns(:category))
  end

  test "should not update category if name already exists" do
    assert_nothing_raised do
      assert_no_difference('Category.count') do
        patch :update, id: @category2, category: @existing_name
      end
    end
    assert_not_nil assigns(:category)
    assert_not_empty assigns(:category).errors.messages
    assert_equal assigns(:category).errors.messages, {:name=>['has already been taken']}
    assert flash.empty?
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category1
    end

    assert_redirected_to admin_categories_path
  end
end
