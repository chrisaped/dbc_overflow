require 'spec_helper'

describe Question do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
  it { should have_many(:answers) }
  it { should have_many(:votes) }
  it { should have_many(:comments) }

end
