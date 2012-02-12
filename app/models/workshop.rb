class Workshop < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :venue
end
