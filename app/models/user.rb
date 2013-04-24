class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  validates :email, :name, :password, :presence => true
  validates :email, :format => { :with => /^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/ }

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

end
