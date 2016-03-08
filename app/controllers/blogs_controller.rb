class BlogsController < ApplicationController

  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.invalid?
      flash[:error] = 'Please enter a value'
    end
    redirect_to new_blog_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :author, :content)
  end

end