class Venue < ActiveRecord::Base
  has_many :workshops
  has_many :neighbors
  has_many :rastaurants, :through => :neighbors
end
