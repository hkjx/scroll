class Specialist < ActiveRecord::Base

  attr_accessible :content, :name, :position, :avatar
  has_attached_file :avatar, :styles => { :medium => "155x185>", :thumb => "100x100>" }
end
