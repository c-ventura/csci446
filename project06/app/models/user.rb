class User < ActiveRecord::Base
  #attr_accessible :username, :email
  acts_as_authentic
  belongs_to :role
  
  def to_s
    username
  end 
  
  def role_symbols
    #roles.map do |role|
	  [role.name.downcase.to_sym]
	#end
  end
end
