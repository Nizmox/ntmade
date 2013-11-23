class SetupController < ApplicationController

  #requires Admin login
  before_filter :authenticate_admin!

  def index
    @contents = Content.all
  end

end