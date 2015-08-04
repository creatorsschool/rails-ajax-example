class PostsController < ApplicationController

  def index
    @x = 1
    @posts = Post.all
  end

end
