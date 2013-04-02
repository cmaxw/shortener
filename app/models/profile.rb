class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :email, :name, :phone_number
end
