class Article < ActiveRecord::Base
  #an article is created by an admin
  belongs_to :admin

  validates :title, :presence => true
  validates :content, :presence => true
end
