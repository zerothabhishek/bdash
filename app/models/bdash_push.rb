class BdashPush < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :blog
end
