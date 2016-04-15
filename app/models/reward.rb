class Reward < ActiveRecord::Base
  validates :title, presence: true,
                  uniqueness: true
  validates :point_cost, presence: true

  has_many :user_rewards
  has_many :users, through: :user_rewards
end
