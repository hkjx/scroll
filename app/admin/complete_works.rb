ActiveAdmin.register CompleteWork do
  index do
    column :id
    column :title
    column :image, sortable: :avatar_file_name  do |res|
      image_tag res.image.url(:thumb)
    end
    column :created_at

    default_actions
  end

  form do |f|
    f.inputs "Complete work" do
      f.input :title
      f.input :image, as: :file
    end
    f.buttons
  end

  show do |res|
    panel "Complete work" do
      attributes_table do
        row :title
        row :image do
          image_tag(res.image.url(:thumb))
        end
        row :created_at
      end
    end
  end
end
