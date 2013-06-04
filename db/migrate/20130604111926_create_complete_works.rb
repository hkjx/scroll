class CreateCompleteWorks < ActiveRecord::Migration
  def change
    create_table :complete_works do |t|
      t.string :title

      t.timestamps
    end
  end
end
