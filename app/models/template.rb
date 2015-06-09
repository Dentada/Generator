class Template < ActiveRecord::Base
	belongs_to :constructor
	belongs_to :client
end
