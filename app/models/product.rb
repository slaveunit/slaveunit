class Product < ActiveRecord::Base


	# PAPERCLIP
	has_attached_file :photo, default_url: "/images/:style/missing.png"

	validates_attachment :photo,
	:presence => true,
	:size => { :in => 0..10.megabytes },
	:content_type => { :content_type => /^image\/(jpg|jpeg|png|gif|tiff)$/ }
	# PAPERCLIP


end


