class SetupController < ApplicationController

  #requires Admin login
  before_filter :authenticate_admin!

  def index
    @contents = Content.order(:name).all
  end

end