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

  def destroy
    Confession.destroy(params[:id])

    redirect_to confessions_path
  end

  def edit
    @categories = Category.all
    @confession = Confession.find(params[:id])
  end

  def update
    confession = params['confession']
    Confession.update(params[:id], text: confession['text'], category_id: confession['category_id'])
  
    redirect_to confession_path(params[:id])
  end

end
