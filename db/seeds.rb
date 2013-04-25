# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

12.times do
  User.create(:name => Faker::Name.name, :email => Faker::Internet.email, :password => "hello")
end

22.times do |x|
  id = rand(10) + 1
  Question.create(:title => "question title #{x}", :content => "question content #{x}", :user_id => id)
end

11.times do |x|
  q_id = rand(10) + 1
  u_id = rand(10) + 1
  Answer.create(:content => "answer content #{x}", :user_id => u_id, :question_id => q_id)
end

15.times do |x|
  type = ["Question", "Answer"].sample
  c_id = rand(10) + 1
  u_id = rand(10) + 1
  Comment.create(:content => "comment content #{x}", :user_id => u_id, :commentable_id => c_id, :commentable_type => type)
end

21.times do |x|
  type = ["Question", "Answer"].sample
  v_id = rand(10) + 1
  u_id = rand(10) + 1
  Vote.create(:user_id => u_id, :voteable_id => v_id, :voteable_type => type)
end
