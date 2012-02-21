class Article < ActiveRecord::Base
  after_initialize :default_values
 
  private
    def default_values
       self.edit_count ||= 0
       self.creation_date ||= DateTime.now.to_date()
     end
end
