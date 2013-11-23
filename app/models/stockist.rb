class Stockist < ActiveRecord::Base
  validates :name, :presence => true
  validates :link, :presence => true
  validates :region, :presence => true
  validates :locations, :presence => true
end
