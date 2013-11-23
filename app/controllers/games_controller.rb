class GamesController < ApplicationController

  #requires Admin login to perform these functions
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(permitted_params)

    if @game.save 
      redirect_to games_path
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(permitted_params)
      redirect_to games_path
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to games_path
  end

  protected
  def permitted_params
    params.require(:game).permit(:name,:description,:status)
  end

end