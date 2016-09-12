class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validate :no_white_space
  has_many :gifs

  def no_white_space
    if name.nil?
    elsif name.chars.include?(" ")
      errors.add(:name, "has to be one word and cannot have a space.")
    end
  end
end
