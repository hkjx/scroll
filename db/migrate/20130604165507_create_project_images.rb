class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.boolean :general
      t.references :project

      t.timestamps
    end
  end
end
