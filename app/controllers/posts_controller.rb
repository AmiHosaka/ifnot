class PostsController < ApplicationController
  def create
    @post = Post.new(title: params[:title], content: params[:content], category: params[:category], user_id: params[:user_id])
    @post.save
  end
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
  end

end
