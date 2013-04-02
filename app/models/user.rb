class User < ActiveRecord::Base
  has_one :profile
  has_many :urls
  has_many :visits, :through => :urls
  attr_accessible :username
end
