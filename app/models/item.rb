class Item < ActiveRecord::Base
	belongs_to :customer
	has_many :attachments
end
