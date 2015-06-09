class Order < ActiveRecord::Base
	has_many :items
	has_many :comments
	belongs_to :client
	belongs_to :order
end
