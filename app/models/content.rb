class Content < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :body, :presence => true
end
