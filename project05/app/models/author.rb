class Author < ActiveRecord::Base
validates_presence_of :name 
validate :no_pats

has_attached_file :photo
has_many :articles
self.per_page = 10

def no_pats
  has_pats = self.name =~ /pat/i
  errors.add(:name, "is not valid. No pats allowed") unless (has_pats.nil?)
end
  
def to_s
  self.name
end

end
