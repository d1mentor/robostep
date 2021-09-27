class ChangeFilesDataType < ActiveRecord::Migration[6.1]
  def change
     change_column :posts, :files, :string
  end
end
