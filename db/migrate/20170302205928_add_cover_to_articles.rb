class AddCoverToArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :image
  	add_attachment :articles, :cover
  end
end
