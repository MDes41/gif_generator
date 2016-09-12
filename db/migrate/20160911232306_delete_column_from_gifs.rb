class DeleteColumnFromGifs < ActiveRecord::Migration
  def change
    remove_column :gifs, :name
  end
end
