class CompleteWork < ActiveRecord::Base
  attr_accessible :title, :image
  has_attached_file :image, :styles => { :medium => "256x156>", :thumb => "100x100>" }

end
