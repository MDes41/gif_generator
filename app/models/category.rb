class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  # validates :no_white_space

  # def no_white_space
  #   if category.chars.include?(" ")
  #     errors.add(:name, "has to be one word and cannot have a space")
  #   end
  # end
end
