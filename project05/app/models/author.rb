class Author < ActiveRecord::Base
validates_presence_of :name 


has_attached_file :photo
has_many :articles


def to_s
  self.name
end

end
