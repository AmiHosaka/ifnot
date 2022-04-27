class CategoriesController < ApplicationController

    def index
        @categories = Category.all.order(created_at: :asc)
    end

    def show
        @category = Category.find_by(id: params[:id])
        @topics = Topic.where(category_id: params[:id])
    end

end
