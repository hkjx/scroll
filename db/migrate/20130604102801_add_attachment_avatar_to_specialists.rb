class AddAttachmentAvatarToSpecialists < ActiveRecord::Migration
  def self.up
    change_table :specialists do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :specialists, :avatar
  end
end
