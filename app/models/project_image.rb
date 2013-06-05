class ProjectImage < ActiveRecord::Base
  belongs_to :project
  attr_accessible :general, :project_id, :image
  has_attached_file :image, :styles => { :big => "255x160>", :medium => "186x80>", :thumb => "100x100>" }

end
