class User < ActiveRecord::Base
  #attr_accessible :username, :email
  acts_as_authentic
end
