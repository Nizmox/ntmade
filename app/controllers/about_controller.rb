class AboutController < ApplicationController

  def index
    @contents = Content.where("content_type <> 'Static'").order(:name).all
  end

end
