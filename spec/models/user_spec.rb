require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:objectives) }
  # it { should have_many(:key_results).through(:objectives) }
  # missing something here ... join table? foreign key for key results for the user model?

  it { should { should validate_presence_of(:name) } }
  it { should { should validate_presence_of(:email) } }
  it { should { should validate_presence_of(:password) } }
end