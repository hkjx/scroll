class StaticBlock < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  attr_accessible :content, :title, :images_attributes
  accepts_nested_attributes_for :images, allow_destroy: true

  def get_image
    images.first
  end

end
