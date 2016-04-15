require 'rails_helper'

RSpec.describe Reward, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title) }
    it { is_expected.to validate_presence_of(:point_cost) }
  end
  it { should have_many(:user_rewards) }
end
