class AdminController < ApplicationController

  #requires Admin login
  before_filter :authenticate_admin!

  def index

  end

end