class LineOfWork < ActiveRecord::Base
  has_many :projects, dependent: :nullify
  attr_accessible :content, :popup_content, :title
end
