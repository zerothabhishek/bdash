class Blog < ActiveRecord::Base
  belongs_to :user
  belongs_to :blogAccount
  has_many :posts, :through => :bdashPush
end
