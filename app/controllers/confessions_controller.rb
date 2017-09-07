class ConfessionsController < ApplicationController
  def index
    @confessions = Confession.all
    @categories = Category.all
  end

  def show
    @confession = Confession.find(params[:id])
  end

  def create
    confession = params['confession']
    Confession.create!(text: confession['text'], category_id: confession['category_id'])
    
    redirect_to confessions_path
  end

end
