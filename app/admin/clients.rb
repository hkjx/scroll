ActiveAdmin.register Client do

  index do
    column :id
    column :title
    column :image, sortable: :avatar_file_name  do |res|
      image_tag res.image.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs "Client" do
      f.input :title
      f.input :image, as: :file
    end
    f.buttons
  end

  show do |res|
    panel "Client" do
      attributes_table do
        row :title
        row :image do
          image_tag(res.image.url(:thumb))
        end
      end
    end
  end

end
