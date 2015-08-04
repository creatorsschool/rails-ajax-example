class PostsApiController < ApplicationController
  def index
    if params[:search]
      posts = Post.where('title LIKE ?', "%#{params[:search]}%")
    else
      posts = Post.all
    end

    render json: posts
  end
end
