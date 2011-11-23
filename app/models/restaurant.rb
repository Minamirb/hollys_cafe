class Restaurant < ActiveRecord::Base
  has_many :neightbors
  has_many :venues, :through => :neighbors
end
