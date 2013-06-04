class AddAttachmentImageToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :clients, :image
  end
end
