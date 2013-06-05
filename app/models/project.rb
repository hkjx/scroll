class Project < ActiveRecord::Base
  belongs_to :line_of_work
  has_many :project_images, :dependent => :destroy

  accepts_nested_attributes_for :project_images, :allow_destroy => true

  attr_accessible :general, :line_of_work_id, :title, :content, :project_images_attributes

  after_save :break_other_general, :if => -> project { project.general }

private

  def break_other_general
    self.class.where('id != ?', id).update_all(general: false)
  end

end
