


class SearchController < ApplicationController
  def index
    if !params[:search].blank?
      @posts = Post.where('title LIKE ?', "%#{params[:search]}%")
    else
      @posts = []
    end
    render json: @posts
  end
end
