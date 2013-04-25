class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id, :user_id

  validates :content, :user_id, :question_id, :presence => true

  belongs_to :user
  belongs_to :question
  belongs_to :voteable, :counter_cache => true
  has_many :votes, :as => :voteable
  has_many :comments, :as => :commentable

end
