class HomeController < ApplicationController

  def index
    @body = Content.where("name = 'About'").first.body

    @articles = Article.all #.order(:created_at)
  end

end