class Article < ActiveRecord::Base
  after_initialize :default_values
  validates :title, :author, :body, :creation_date, presence: true
  validates :edit_count, numericality: {greater_than_or_equal_to: 0.00}
  validates :title, uniqueness: true
  validate :no_pats
  
  
 
  
  def no_pats
	has_pats = self.author =~ /pat/i
	errors.add(:author, "is not valid. No pats allowed") unless (has_pats.nil?)
  end
  
  private
    def default_values
       self.edit_count ||= 0
       self.creation_date ||= DateTime.now.to_date()
     end
end
