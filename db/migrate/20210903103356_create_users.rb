class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_hash
      t.date :date_of_invite
      t.string :avatar
      t.string :profile_color

      t.timestamps
    end
  end
end
