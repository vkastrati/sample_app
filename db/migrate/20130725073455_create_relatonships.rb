class CreateRelatonships < ActiveRecord::Migration
  def change
    create_table :relatonships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end

    add_index :relatonships, :follower_id
    add_index :relatonships, :followed_id
    add_index :relatonships, [:follower_id, :followed_id], unique: true
  end
end
