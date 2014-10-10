class Vendor < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :description, presence: true

  def self.authenticate(username)
    user = Vendor.find_by(username: username)
    user ? user : nil
  end
end
