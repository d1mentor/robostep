class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :text
      t.integer :likes
      t.string :files
      t.string :photos

      t.timestamps
    end
  end
end
