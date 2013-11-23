class ArticlesController < ApplicationController

  #requires Admin login to perform these functions
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_admin.articles.new(permitted_params)

    if @article.save 
      redirect_to '/articles'
    else
      render 'new'
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(permitted_params)
      redirect_to '/articles'
    else
      render 'edit'
    end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to '/articles'
  end

  protected #can't be routed to

  #parameters allowed when creating or updating articles
  def permitted_params
    params.require(:article).permit(:title,:content,:caption)
  end

end