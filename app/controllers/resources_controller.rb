class ResourcesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @resources = Resource.all 
  end

  def create
    @resource = current_user.resources.create(resource_params)
    if @resource.invalid?
      flash[:error] = 'Please enter a value'
    end
    redirect_to user_path(current_user)
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :website_url, :description)
  end

end
