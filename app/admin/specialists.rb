ActiveAdmin.register Specialist do

  index do
    column :id
    column :name
    column :position
    column :avatar, sortable: :avatar_file_name  do |res|
      image_tag res.avatar.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs "Specialist" do
      f.input :name
      f.input :position
      f.input :content
      f.input :avatar, as: :file
    end
    f.buttons
  end

  show do |res|
    panel "Specialist" do
      attributes_table do
        row :name
        row :position
        row :content
        row :avatar do
          image_tag(res.avatar.url(:thumb))
        end
      end
    end
  end

end
