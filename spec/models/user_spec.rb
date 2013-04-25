require 'spec_helper'

describe User do

  it "will not be created if email is invalid" do
    user = User.create(:name => "hannah", :email => "hannah@hannah", :password => "hello")
    user.should_not be_valid
  end

  # it { should validate_presence_of(:name) } # BUGBUG MADE INVALID BY BCRYPT
  # it { should validate_presence_of(:email) }
  # it { should validate_presence_of(:password) }
  it { should have_many(:questions) }
  it { should have_many(:answers) }
  it { should have_many(:comments) }
  it { should have_many(:votes) }

end

