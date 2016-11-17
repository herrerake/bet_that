class User < ActiveRecord::Base
  has_many :events
  has_many :comments
  validates :username, :password, presence: true
end
