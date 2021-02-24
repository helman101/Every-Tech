require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    it { should validate_presence_of(:author_id) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:title) }
  end

  context 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should have_many(:votes) }
    it { should have_many(:voting_users).through(:votes).source(:user) }
  end
end
