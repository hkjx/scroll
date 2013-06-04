class CreateStaticBlocks < ActiveRecord::Migration
  def change
    create_table :static_blocks do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
