class ResourcesController < ApplicationController

  def index
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create(resource_params)
    if @resource.invalid?
      flash[:error] = 'Please enter a value'
    end
    redirect_to new_resource_path
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :website_url, :description)
  end

end
