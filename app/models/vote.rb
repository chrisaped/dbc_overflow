class Vote < ActiveRecord::Base
  attr_accessible :user_id, :voteable_id, :voteable_type

  validates :user_id, :voteable_id, :voteable_type, :presence => true

  belongs_to :user
  belongs_to :voteable, :polymorphic => true

end
