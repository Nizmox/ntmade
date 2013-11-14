class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(permitted_params)

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
  def permitted_params
    params.require(:article).permit(:title,:content,:caption)
  end

end