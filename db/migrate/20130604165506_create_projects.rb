class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.references :line_of_work
      t.boolean :general

      t.timestamps
    end
  end
end
