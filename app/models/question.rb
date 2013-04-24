class Question < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  belongs_to :user
  has_many :answers
  has_many :votes, :as => :voteable
  has_many :comments, :as => :commentable

end
