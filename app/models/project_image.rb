class ProjectImage < ActiveRecord::Base
  belongs_to :project
  attr_accessible :general, :project_id, :image
  has_attached_file :image, :styles => { :medium => "186x80>", :thumb => "100x100>" }

  after_save :break_other_general, :if => -> image { image.general }

private
  def break_other_general
    self.class.where(project_id: project_id).where('id != ?', id).update_all(general: false)
  end

end
