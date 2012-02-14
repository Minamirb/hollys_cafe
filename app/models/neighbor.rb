class Neighbor < ActiveRecord::Base
  has_many :restaurants
  has_many :venues
end
