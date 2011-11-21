class Neighbor < ActiveRecord::Base
  belongs_to :venue
  belongs_to :restaurant
end
