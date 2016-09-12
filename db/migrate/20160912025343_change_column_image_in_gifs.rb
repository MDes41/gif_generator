class ChangeColumnImageInGifs < ActiveRecord::Migration
  def change
    change_column :gifs, :image, :string
  end
end
