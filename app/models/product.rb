class Product < ActiveRecord::Base

# PAPERCLIP
# product.photo.url added for Amazon AWS
has_attached_file :photo, default_url: "/images/:style/missing.png", product.photo.url #=> http://slaveunitapp.s3.amazonaws.com/...


validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
# PAPERCLIP

end


