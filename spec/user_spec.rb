require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).with_short_message('name is too short') }
  end

  context 'associations' do
    it { should have_many(:authored_articles).class_name('Article').with_foreign_key('author_id') }
    it { should have_many(:votes) }
    it { should have_many(:voted_articles).through(:votes).source(:article) }
  end
end
