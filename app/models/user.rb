class User < ActiveRecord::Base
  # has_secure_password

  validates :username, presence: true,
                     uniqueness: true
  validates :password, presence: true
  
  enum role: %w(default admin)

  has_many :user_rewards
  has_many :rewards, through: :user_rewards
end
