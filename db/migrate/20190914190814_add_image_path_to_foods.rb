class AddImagePathToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :image_path, :string
  end
end
