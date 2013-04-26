require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt

  attr_accessible :email, :name, :password

  # has_secure_password
  validates :email, :name, :password, :presence => true
  validates :email, :format => { :with => /^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/ }

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
