class AboutController < ApplicationController

  def index
    @about = Content.where("content_type = 'About Us'").order(:name).all
    @legal = Content.where("content_type = 'Legal'").order(:name).all
  end

end
