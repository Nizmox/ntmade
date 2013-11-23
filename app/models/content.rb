class Content < ActiveRecord::Base
  validates :name, :presence => true
  validates :body, :presence => true
  validates :name, :uniqueness => true
end
