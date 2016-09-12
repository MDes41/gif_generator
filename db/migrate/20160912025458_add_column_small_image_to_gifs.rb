class AddColumnSmallImageToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :small_image, :string
  end
end
