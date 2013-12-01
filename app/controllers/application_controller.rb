class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_footer_content, :get_games

  protected
  #to fetch footer content
  def get_footer_content
    @footer = Content.where("name = 'Footer'").first.body 
  end

  #needed to generate dropdown links to games
  def get_games
    @games_to_link = Game.all
  end
end
