require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:priority) }
  end

  context 'associations' do
    it { should have_and_belong_to_many(:articles)}
  end
end
