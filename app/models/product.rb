class Product < ActiveRecord::Base

# PAPERCLIP

has_attached_file :photo, default_url: "/images/:style/missing.png"


validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
# PAPERCLIP

end


