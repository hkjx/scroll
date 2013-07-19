class AddAttachmentImageToSectionBackgrounds < ActiveRecord::Migration
  def self.up
    change_table :section_backgrounds do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :section_backgrounds, :image
  end
end
