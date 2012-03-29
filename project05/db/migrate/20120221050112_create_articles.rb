class CreateArticles < ActiveRecord::Migration

  def change
    create_table :articles do |t|
      t.string :title
      t.integer :author_id
      t.text :body
      t.date :creation_date
      t.integer :edit_count

      t.timestamps
	  
	  
    end
	#remove_column :articles, :author
	  #remove_column :articles, :string
	  #remove_column :articles, :text
	  #remove_column :articles, :date
	  #remove_column :articles, :int
  end
  
  def self.down
    drop_table :articles
  end
end
