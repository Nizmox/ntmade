class HomeController < ApplicationController

  def index
    @body = Content.where("name = 'About'").first.body
  end

end