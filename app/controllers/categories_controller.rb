class CategoriesController < ApplicationController
  def index
    redirect_to confessions_path
  end
  
  def show
    @confessions = Confession.where(category_id: params[:id])
    @category = Category.find(params[:id])
    @categories = Category.all
  end

  # def create
  #   confession = params['confession']
  #   Confession.create!(text: confession['text'], category_id: confession['category_id'])
    
  #   redirect_to confessions_path
  # end
end
