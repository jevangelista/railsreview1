class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
    render :index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
