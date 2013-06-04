class CreateLineOfWorks < ActiveRecord::Migration
  def change
    create_table :line_of_works do |t|
      t.string :title
      t.text :content
      t.text :popup_content

      t.timestamps
    end
  end
end
