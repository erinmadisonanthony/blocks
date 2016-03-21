class BlogsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @blogs = Blog.all 
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.create(blog_params)
    if @blog.invalid?
      flash[:error] = 'Please enter a value'
    end
    redirect_to blogs_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :author, :content)
  end

end