class CreateSpecialists < ActiveRecord::Migration
  def change
    create_table :specialists do |t|
      t.string :name
      t.string :position
      t.text :content

      t.timestamps
    end
  end
end
