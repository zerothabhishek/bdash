class User < ActiveRecord::Base
  has_many :posts	
  has_many :blogs	
  has_many :blogAccounts
  has_many :bdashPushes

end
