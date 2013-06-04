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
  end
end
