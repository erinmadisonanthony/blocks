class BlogsController < ApplicationController

  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :author, :content)
  end

end