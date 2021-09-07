class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :text
      t.json :photos
      t.json :files

      t.timestamps
    end
  end
end
