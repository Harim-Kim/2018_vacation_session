class CreatePostlikes < ActiveRecord::Migration
  def change
    create_table :postlikes do |t|
      t.integer :post_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
