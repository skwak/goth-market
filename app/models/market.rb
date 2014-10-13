class Market < ActiveRecord::Base
  has_many :vendors
  geocoded_by :address   
  after_validation :geocode
end
