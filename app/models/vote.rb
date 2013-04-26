class Vote < ActiveRecord::Base
  attr_accessible :user_id, :voteable_id, :voteable_type

  validates_uniqueness_of :user_id, :scope => [:voteable_type, :voteable_id]
  validates :user_id, :voteable_id, :voteable_type, :presence => true

  belongs_to :user
  belongs_to :voteable, :polymorphic => true

end
