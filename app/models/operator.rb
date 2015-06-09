class Operator < ActiveRecord::Base
  
	has_many :orders
	has_many :comments, as: :commentable
end
