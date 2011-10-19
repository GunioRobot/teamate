class User < ActiveRecord::Base
  has_many :messages
  
  validates_uniqueness_of :email
  validates_presence_of :password, :last_name, :name, :email
  validates_size_of :password, :within => 5..15
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_confirmation_of :password
end
