class AboutController < ApplicationController

  def index
    @contents = Content.where("content_type = 'About Us'").order(:name).all
  end

end
