class Article < ActiveRecord::Base
  after_initialize :default_values
  validates :title, :body, :creation_date, presence: true
  validates :edit_count, numericality: {greater_than_or_equal_to: 0.00}
  validates :title, uniqueness: true
  
  
  belongs_to :author
  
  self.per_page = 10
    

  
  private
    def default_values
       self.edit_count ||= 0
       self.creation_date ||= DateTime.now.to_date()
     end
end
