class Image < ActiveRecord::Base
  belongs_to :imageable
  attr_accessible :imageable_id, :imageable_type, :image
  has_attached_file :image, styles: { big: '155x185>' }
end
