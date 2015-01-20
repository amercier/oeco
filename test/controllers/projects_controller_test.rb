require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project1 = projects(:one)
    @project2 = projects(:two)
    @update = {
      url: 'project-3',
      title: 'Project 3',
      summary: 'Summary of Project 3',
      content: 'This is the content of Project 3',
      published: false
    }
    @existing_url = @update.merge({ url: @project1.url })

    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: @update
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should not create project if url already exists" do
    assert_nothing_raised do
      assert_no_difference('Project.count') do
        post :create, project: @existing_url
      end
    end
    assert_not_nil assigns(:project)
    assert_not_empty assigns(:project).errors.messages
    assert_equal assigns(:project).errors.messages, {:url => ['has already been taken'], :title=>[], :summary=>[], :content=>[], :published=>[] }
    assert flash.empty?
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: @update
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
