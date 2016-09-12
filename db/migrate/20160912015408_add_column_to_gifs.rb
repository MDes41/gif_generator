class AddColumnToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :name, :string
    add_column :gifs, :bitly, :string
  end
end
