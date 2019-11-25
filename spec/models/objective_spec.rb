require 'rails_helper'

RSpec.describe Objective, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:key_results) }

  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:score) }
  it { should validate_presence_of(:type) }
end