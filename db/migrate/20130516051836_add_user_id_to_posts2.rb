class AddUserIdToPosts2 < ActiveRecord::Migration
  def change
    add_column :posts2s, :user_id, :integer
    add_index :posts2s, :user_id
  end
end
