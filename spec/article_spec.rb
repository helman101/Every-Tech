require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    it { should validate_presence_of(:author_id) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:title).is_at_least(6).is_at_most(200) }
    it { should validate_length_of(:content).is_at_least(6).is_at_most(5000) }
  end

  context 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should have_many(:votes).dependent(:destroy) }
    it { should have_many(:voting_users).through(:votes).source(:user) }
    it { should have_one_attached(:image) }
    it { should have_and_belong_to_many(:categories) }
  end
end
