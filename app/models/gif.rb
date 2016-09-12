class Gif < ActiveRecord::Base
  validates :url_path, presence: true
  belongs_to :category
  has_many :favorites
end
