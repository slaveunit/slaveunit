class AddAttachmentPhotoToProducts < ActiveRecord::Migration
  

# PAPERCLIP
  def up
    add_attachment :products, :photo
  end
  def down
    remove_attachment :products, :photo
  end
 # PAPERCLIP


end