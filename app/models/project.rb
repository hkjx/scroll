class Project < ActiveRecord::Base
  belongs_to :line_of_work
  has_many :project_images, :dependent => :destroy

  accepts_nested_attributes_for :project_images, :reject_if => proc { |attributes| attributes['image'].blank?}, :allow_destroy => true

  attr_accessible :general, :line_of_work_id, :title, :project_images_attributes
end
