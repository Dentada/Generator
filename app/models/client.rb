class Client < ActiveRecord::Base
	has_many :orders
	has_many :templates
	has_many :comments, as: :commentable
end
