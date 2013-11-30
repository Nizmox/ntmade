class Game < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :description, :presence => true
  validates :status, :presence => true
end
