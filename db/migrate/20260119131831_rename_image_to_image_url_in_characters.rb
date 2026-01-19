class RenameImageToImageUrlInCharacters < ActiveRecord::Migration[7.0]
  def change
    rename_column :characters, :image, :image_url
  end
end
