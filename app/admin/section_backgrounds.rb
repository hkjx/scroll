ActiveAdmin.register SectionBackground do
  index do
    column :section_name
    column :image, sortable: :image_file_name  do |res|
      image_tag res.image.url(:thumb)
    end
    column :created_at

    default_actions
  end

  form do |f|
    f.inputs "Background" do
      f.input :section_name
      f.input :image, as: :file
    end
    f.buttons
  end

  show do |res|
    panel "Background" do
      attributes_table do
        row :section_name
        row :image do
          image_tag(res.image.url)
        end
        row  :created_at
      end
    end
  end
end
