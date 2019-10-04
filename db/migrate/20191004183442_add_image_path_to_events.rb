class AddImagePathToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :image_path, :string
  end
end
