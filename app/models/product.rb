class Product < ActiveRecord::Base

  # PAPERCLIP
  has_attached_file :photos, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photos, content_type: /\Aimage\/.*\Z/
  # PAPERCLIP

end