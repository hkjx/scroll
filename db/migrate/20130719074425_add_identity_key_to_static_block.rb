class AddIdentityKeyToStaticBlock < ActiveRecord::Migration
  def change
    add_column :static_blocks, :identity_key, :string
  end
end
