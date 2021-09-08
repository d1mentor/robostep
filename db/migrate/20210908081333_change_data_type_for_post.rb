class ChangeDataTypeForPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :photos, :json
  end
end
