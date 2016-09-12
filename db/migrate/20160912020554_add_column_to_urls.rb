class AddColumnToUrls < ActiveRecord::Migration
  def change
    add_column :gifs, :images, :text
  end
end
