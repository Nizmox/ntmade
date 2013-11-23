class StockistsController < ApplicationController

  #requires Admin login to perform these functions
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @stockists = Stockist.all
  end

  def new
    @stockist = Stockist.new
  end

  def create
    @stockist = Stockist.new(permitted_params)

    if @stockist.save
      redirect_to stockists_path
    else
      render 'new'
    end
  end

  def edit
    @stockist = Stockist.find(params[:id])
  end

  def update
    @stockist = Stockist.find(params[:id])

    if @stockist.update(permitted_params)
      redirect_to stockists_path
    else
      render 'edit'
    end
  end

  def destroy
    @stockist = Stockist.find(params[:id])
    @stockist.destroy

    redirect_to stockists_path
  end

  protected
  def permitted_params
    params.require(:stockist).permit(:name,:link,:region,:locations)
  end

end