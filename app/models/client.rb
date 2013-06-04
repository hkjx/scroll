class Client < ActiveRecord::Base
  attr_accessible :title, :image
  has_attached_file :image, :styles => { :medium => "186x80!", :thumb => "100x100>" }

end
