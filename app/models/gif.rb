class Gif < ActiveRecord::Base
  validates :url_path, presence: true
  belongs_to :category
end
