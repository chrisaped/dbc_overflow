class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

end