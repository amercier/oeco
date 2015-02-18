require 'test_helper'

class Admin::PropertiesControllerTest < ActionController::TestCase
  setup do
    @property1 = properties(:one)
    @property2 = properties(:two)
    @update = {
      name: 'Property 3',
      order: 2
    }
    @existing_name = @update.merge({ name: @property1.name })
    @existing_order = @update.merge({ order: @property1.order })
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count', 1) do
      post :create, property: @update
    end

    assert_redirected_to admin_property_path(assigns(:property))
  end

  test "should not create property if name already exists" do
    assert_nothing_raised do
      assert_no_difference('Property.count') do
        post :create, property: @existing_name
      end
    end
    assert_not_nil assigns(:property)
    assert_not_empty assigns(:property).errors.messages
    assert_equal assigns(:property).errors.messages, {:name => ['has already been taken'], :order => []}
    assert flash.empty?
  end

  test "should not create property if order already exists" do
    assert_nothing_raised do
      assert_no_difference('Property.count') do
        post :create, property: @existing_order
      end
    end
    assert_not_nil assigns(:property)
    assert_not_empty assigns(:property).errors.messages
    assert_equal assigns(:property).errors.messages, {:name => [], :order => ['has already been taken']}
    assert flash.empty?
  end

  test "should show property" do
    get :show, id: @property1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property1
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property1, property: @update
    assert_redirected_to admin_property_path(assigns(:property))
  end

  test "should not update property if name already exists" do
    assert_nothing_raised do
      assert_no_difference('Category.count') do
        patch :update, id: @property2, property: @existing_name
      end
    end
    assert_not_nil assigns(:property)
    assert_not_empty assigns(:property).errors.messages
    assert_equal assigns(:property).errors.messages, {:name=>['has already been taken'], :order=>[]}
    assert flash.empty?
  end

  test "should not update property if order already exists" do
    assert_nothing_raised do
      assert_no_difference('Category.count') do
        patch :update, id: @property2, property: @existing_order
      end
    end
    assert_not_nil assigns(:property)
    assert_not_empty assigns(:property).errors.messages
    assert_equal assigns(:property).errors.messages, {:name=>[], :order=>['has already been taken']}
    assert flash.empty?
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property1
    end

    assert_redirected_to admin_properties_path
  end
end
