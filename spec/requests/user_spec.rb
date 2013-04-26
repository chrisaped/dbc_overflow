require 'spec_helper'

describe 'User' do

  before :each do
    user = User.create(:name => "User", :email => 'user@example.com', :password => 'user')
    visit new_session_path
    fill_in 'session_email', with: "user@example.com"
    fill_in 'session_password', with: "user"
    click_button "Login"
  end

  it "can create a new post and view it" do
    visit questions_path

    expect {
      fill_in 'question_title',   with: "Question!"
      fill_in 'question_content', with: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."
      click_button "Submit"
    }.to change(Question, :count).by(1)

  end

  # it "can mark an existing post as unpublished" do
  #   pending # remove this line when you're working on implementing this test

  #   page.should have_content "Published: false"
  # end

end
  # describe 'Admin' do
  #   it "can create a new post and view it" do
  #     visit new_admin_post_url

  #     expect {
  #       fill_in 'post_title',   with: "Hello world!"
  #       fill_in 'post_content', with: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."
  #       page.check('post_is_published')
  #       click_button "Save"
  #     }.to change(Post, :count).by(1)

  #     page.should have_content "Published: true"
  #     page.should have_content "Post was successfully saved."
  #   end

  #   it "can mark an existing post as unpublished" do
  #     pending # remove this line when you're working on implementing this test

  #     page.should have_content "Published: false"
  #   end
  # end
