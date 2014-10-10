class Vendor < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :description, presence: true
end
