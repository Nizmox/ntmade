class ContentsController < ApplicationController

  #requires Admin login
  before_filter :authenticate_admin!

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(permitted_params)
    @content.content_type = "About Us"
    if @content.save
      redirect_to content_path(@content)
    else
      render 'new'
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])

    if @content.update(permitted_params)
      redirect_to content_path
    else
      render 'edit'
    end
  end

  protected
  def permitted_params
    params.require(:content).permit(:name,:body)
  end

end