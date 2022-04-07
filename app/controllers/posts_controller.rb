class PostsController < ApplicationController
  def create
    @post = Post.new(title: params[:title], content: params[:content], topic_id: params[:topic_id], username: params[:username])
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
