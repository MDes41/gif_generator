class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :role, presence: true
  validate :no_white_space

  enum role: %w(default admin)

  def no_white_space
    if username.nil?
    elsif username.chars.include?(' ')
      errors.add(:username, "cannot have any spaces.")
    end
  end
end
