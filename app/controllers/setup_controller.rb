class SetupController < ApplicationController

  #requires Admin login
  before_filter :authenticate_admin!

  def index
    @contents = Content.where("content_type = 'Static'").order(:name).all
  end

end