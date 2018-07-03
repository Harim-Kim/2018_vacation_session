class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true
      t.timestamps null: false
    end
  end
end
