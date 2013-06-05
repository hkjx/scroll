ActiveAdmin.register LineOfWork do


  form do |f|
    f.inputs "Line Of Works" do
      f.input :title
      f.input :content, :input_html => { :class => "ckeditor", :rows => "40"}
      f.input :popup_content, :input_html => { :class => "ckeditor", :rows => "40"}
    end
    f.buttons
  end


end

