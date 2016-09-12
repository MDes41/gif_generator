class RenameColumnInGifs < ActiveRecord::Migration
  def change
    rename_column :gifs, :images, :image
  end
end
