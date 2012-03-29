class CreateAuthors < ActiveRecord::Migration
  def change
    
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
	  #remove_column :articles, :author
      #add_column :articles,:author_id, :integer
	  
	Article.all.each do |a|
	  new_author = Author.create(:name => a.author)
	  a.author = new_author
	  a.save
	end
  end
  
  def self.down
    drop_table :authors
  end
end
