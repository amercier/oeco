class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by_url(params[:url])
    raise ActionController::RoutingError.new("Project #{params[:url]} does not exist") unless @project
  end

end
