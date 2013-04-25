class Question < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  validates :title, :content, :user_id, :presence => true

  belongs_to :user
  belongs_to :voteable, :counter_cache => true
  has_many :answers
  has_many :votes, :as => :voteable
  has_many :comments, :as => :commentable

end
