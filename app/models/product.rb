class Product < ActiveRecord::Base

# PAPERCLIP
belongs_to :product

has_attached_file :photo, default_url: "/images/:style/missing.png"

validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
# PAPERCLIP

#RATY
def average_rating
	comments.average(:rating).to_f
end
#RATY

# COMMENTS
has_many :comments
# COMMENTS

end


