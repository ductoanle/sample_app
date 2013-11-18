class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  before_save {|user| user.email.downcase!}
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  validates :name, presence:true, length: {maximum: 50}
  validates :email, presence:true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence:true, length: {minimum: 6}
  validates :password_confirmation, presence:true
end
