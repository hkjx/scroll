class SectionBackground < ActiveRecord::Base
  attr_accessible :section_name, :image
  has_attached_file :image, styles: { thumb: '30x30>' }
  
  validates :section_name, presence: true
  validates :image, :attachment_presence => true

end
