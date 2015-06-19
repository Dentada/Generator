class Template < ActiveRecord::Base
	belongs_to :constructor
	belongs_to :client
	mount_uploader :psd_file, TemplateUploader

	after_create do |template|
		require 'psd'
		psd = PSD.new('public/' + template.psd_file.to_s)
		psd.parse!
		template.body_json = psd.tree.to_hash
		preview_name = DateTime.now.to_s(:number)   
		psd.image.save_as_png 'public/images/previews/'+ preview_name + '.png'
		template.preview = 'public/images/previews/'+ preview_name + '.png'
		template.update_attributes(:body_json =>template.body_json)
		template.update_attributes(:preview =>template.preview)
		
	end

end
