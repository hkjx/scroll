class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.integer :imageable_type

      t.timestamps
    end
  end
end
