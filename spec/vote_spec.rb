require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:article_id) }
  end

  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end
end
