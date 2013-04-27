require 'spec_helper'

describe 'User' do

  before :each do
    user = User.create(:name => "User", :email => 'user@example.com', :password => 'user')
    visit new_session_path
    fill_in 'session_email', with: "user@example.com"
    fill_in 'session_password', with: "user"
    click_button "Login"
  end

  it "can create a new question and view it" do
    visit questions_path 

    expect {
      fill_in 'question_title',   with: "Yoiks"
      fill_in 'question_content', with: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."
      click_button "Submit"
    }.to change(Question, :count).by(1)

  end

  it "can vote up for the question it just created" do
    visit "questions/#{Question.last.id}"

    expect {
      click_on("Up Vote Question")
      }.to change(Question.last.votes, :count).by(1)

  end

end

