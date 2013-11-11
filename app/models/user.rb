class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  before_save {|user| user.email.downcase!}
  attr_accessible :email, :name

  validates :name, presence:true, length: {maximum: 50}
  validates :email, presence:true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
end
