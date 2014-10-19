require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news1 = news(:one)
    @news2 = {
      url: 'url2',
      title: 'MyString 2',
      summary: 'MyString 2',
      order: 2
    }
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
    assert_difference('News.count') do
      post :create, news: @news2
      puts 'OK'
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news1
    assert_response :success
  end

  # test "should update news" do
  #   patch :update, id: @news1, news: { order: @news2.order, summary: @news2.summary, title: @news2.title, url: @news2.url }
  #   assert_redirected_to news_path(assigns(:news))
  # end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news1
    end

    assert_redirected_to news_index_path
  end
end
