class AddAttachmentImageToCompleteWorks < ActiveRecord::Migration
  def self.up
    change_table :complete_works do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :complete_works, :image
  end
end
