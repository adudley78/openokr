require 'rails_helper'

RSpec.describe KeyResult, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:objective) }

  it { should { should validate_presence_of(:description) } }
  it { should { should validate_presence_of(:measure) } }
  it { should { should validate_presence_of(:due_date) } }
end