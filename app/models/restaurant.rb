class Restaurant < ActiveRecord::Base
  has_many :workshops
  has_many :neighbors
  has_many :venues, :through => :neighbors
end
