class User < ActiveRecord::Base

  has_many :moods

  has_secure_password

  validates_uniqueness_of :name
  validates_uniqueness_of :email
  validates_presence_of :name
  validates_presence_of :email
end
