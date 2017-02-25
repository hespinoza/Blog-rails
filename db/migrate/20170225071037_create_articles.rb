class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :image
      t.text :body
      t.string :video
      t.text :plot
      t.integer :category
      t.integer :visits_count, default: 0
      t.references :admin, index: true, foreign_key: true
      t.string :state, default: 0
      t.string :slug

      t.timestamps null: false
    end
  end
end
