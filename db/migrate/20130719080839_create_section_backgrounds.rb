class CreateSectionBackgrounds < ActiveRecord::Migration
  def change
    create_table :section_backgrounds do |t|
      t.string :section_name

      t.timestamps
    end
  end
end
