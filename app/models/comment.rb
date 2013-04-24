class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :content, :user_id

  validates :user_id, :content, :commentable_id, :commentable_type, :presence => true

  belongs_to :user
  belongs_to :commentable, :polymorphic => true

end
