class Article < ActiveRecord::Base
  #belongs_to :admin

  validates :title, :presence => true
  validates :content, :presence => true
end
