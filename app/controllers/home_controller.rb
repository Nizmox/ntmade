class HomeController < ApplicationController

  def index
    @body = Content.where("name = 'Homepage'").first.body

    #@articles = Article.all.order('created_at DESC')
  end

end