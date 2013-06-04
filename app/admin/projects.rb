ActiveAdmin.register Project do
  form do |f|
    f.inputs "Project details" do
      f.input :line_of_work
      f.input :title
      f.input :general
      f.has_many :project_images do |i|
        i.input :general
        i.input :image, as: :file
      end
    end
    f.buttons
  end
end
