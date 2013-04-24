require 'spec_helper'

describe Vote do

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:voteable_id) }
  it { should validate_presence_of(:voteable_type) }
  it { should belong_to(:user) }
  it { should belong_to(:voteable) }

end
