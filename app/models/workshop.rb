class Workshop < ActiveRecord::Base
  has_many :venues
  has_many :restaurans
end
