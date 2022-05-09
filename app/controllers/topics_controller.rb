class TopicsController < ApplicationController
  def create
    @topic = Topic.new(topic_name: params[:topic_name], category_id: params[:category_id], topic_owner: params[:topic_owner])
    @topic.save
  end
  def index
    @topics = Topic.all.order(created_at: :desc)
  end
  def show
    @topic = Topic.find_by(id: params[:id])
    @posts = Post.where(topic_id: params[:id])
    @category = Category.find_by(id: @topic.category_id)
  end
end
