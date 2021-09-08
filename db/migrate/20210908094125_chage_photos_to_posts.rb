class ChagePhotosToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :photos, :string
  end
end
