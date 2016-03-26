class LandingPagesController < ApplicationController
  def index
    @blogs = Blog.all
  end
end
