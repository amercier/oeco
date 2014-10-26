require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news1 = news(:one)
    @news2 = news(:two)
    @update = {
      url: 'url3',
      title: 'MyString 3',
      summary: 'MyString 3',
      order: 3
    }
    @existing_url = @update.merge({ url: @news1.url })
    @existing_order = @update.merge({ order: @news1.order })
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('News.count', 1) do
      post :create, news: @update
    end
    assert_redirected_to news_path(assigns(:news))
  end

  test "should not create news if url already exists" do
    assert_nothing_raised do
      assert_no_difference('News.count') do
        post :create, news: @existing_url
      end
    end
    assert_not_nil assigns(:news)
    assert_not_empty assigns(:news).errors.messages
    assert_equal assigns(:news).errors.messages, {:url => ['has already been taken'], :title=>[], :summary=>[], :order=>[]}
    assert flash.empty?
  end

  test "should not create news if order already exists" do
    assert_nothing_raised do
      assert_no_difference('News.count') do
        post :create, news: @existing_order
      end
    end
    assert_not_nil assigns(:news)
    assert_not_empty assigns(:news).errors.messages
    assert_equal assigns(:news).errors.messages, {:url => [], :title=>[], :summary=>[], :order=>['has already been taken']}
    assert flash.empty?
  end

  test "should show news" do
    get :show, id: @news1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news1
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news1, news: @update
    assert_redirected_to news_path(assigns(:news))
  end

  test "should not update news if url already exists" do
    assert_nothing_raised do
      assert_no_difference('News.count') do
        patch :update, id: @news2, news: @existing_url
      end
    end
    assert_not_nil assigns(:news)
    assert_not_empty assigns(:news).errors.messages
    assert_equal assigns(:news).errors.messages, {:url => ['has already been taken'], :title=>[], :summary=>[], :order=>[]}
    assert flash.empty?
  end

  test "should not update news if order already exists" do
    assert_nothing_raised do
      assert_no_difference('News.count') do
        patch :update, id: @news2, news: @existing_order
      end
    end
    assert_not_nil assigns(:news)
    assert_not_empty assigns(:news).errors.messages
    assert_equal assigns(:news).errors.messages, {:url => [], :title=>[], :summary=>[], :order=>['has already been taken']}
    assert flash.empty?
  end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news1
    end

    assert_redirected_to news_index_path
  end
end
