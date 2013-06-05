ActiveAdmin.register Project do

  index do
    column :id
    column :title
    column :line_of_work
    column :general
    column :project_images_count do |res|
      res.project_images.size
    end
    column :created_at
    default_actions
  end

  show do |project|
    panel "Project" do
      attributes_table do
        row :title
        row :line_of_work
        row :content
        row :general
      end
    end
    div :class => "panel" do
      h3 "Images"
      if project.project_images and project.project_images.count > 0
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th do
                end
              end
              tbody do
                project.project_images.each do |pi|
                  tr do
                    td do
                      image_tag pi.image.url(:medium)
                    end
                  tr do
                    td do
                      "general - #{pi.general}"
                    end
                  end
                  end
                end
              end
            end
          end
        end
      else
        h3 "No images available"
      end
    end
  end

  form do |f|
    f.inputs "Project details" do
      f.input :line_of_work
      f.input :title
      f.input :content, as: :ckeditor
      f.input :general
      f.has_many :project_images do |i|
        i.input :_destroy, as: :boolean, required: false, label: 'Remove' if i.object.id.present?
        i.input :image, as: :file, :hint => f.template.image_tag(i.object.image.url(:medium))
        i.input :general
      end
    end
    f.buttons
  end
end
