class Role < ActiveRecord::Base
  #attr_accessible :username, :email
  validates_length_of :name, :minimum => 1
  validates_uniqueness_of :name
  has_many :users
  
  
  def name=(name)
	write_attribute(:name, name.strip.downcase)
  end
  
  def to_s
    name
  end
  
end