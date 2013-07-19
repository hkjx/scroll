class Client < ActiveRecord::Base
  attr_accessible :title, :image
  convert_options_prefix = "-background transparent -compose Copy -gravity center -extent"
  has_attached_file :image, :styles => { :medium => "186x80>", :thumb => "100x100>" },
  :convert_options => { :medium => "#{convert_options_prefix} 186x80", :thumb => "#{convert_options_prefix} 100x100" }

end
