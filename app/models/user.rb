class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :role, presence: true

  enum role: %w(default admin)
end
