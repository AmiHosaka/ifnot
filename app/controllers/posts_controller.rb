class PostsController < ApplicationController
  def create
    @post = Post.new(title: params[:title], content: params[:content], category: params[:category], user_id: params[:user_id])
    @post.save
  end
end

