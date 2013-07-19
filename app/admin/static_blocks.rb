ActiveAdmin.register StaticBlock do
  index do
    column :id
    column :title
    column :content
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "Static block" do
      f.input :title
      f.input :content, as: :ckeditor
      f.has_many :images do |i|
        i.input :_destroy, as: :boolean, required: false, label: 'Remove' if i.object.id.present?
        i.input :image, as: :file, :hint => f.template.image_tag(i.object.image.url(:medium))
      end
    end
    f.buttons
  end

  show do |res|
    panel "Static block" do
      attributes_table do
        row :title
        row :content
        row :created_at
      end
    end
    div :class => "panel" do
      h3 "Images"
      if res.images and res.images.count > 0
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th do
                end
              end
              tbody do
                tr do
                  res.images.each do |i|
                    td do
                      image_tag i.image.url(:big)
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
end
