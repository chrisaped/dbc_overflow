class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id, :user_id
  belongs_to :user
  belongs_to :question
  has_many :votes, :as => :voteable
  has_many :comments, :as => :commentable

end
