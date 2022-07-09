class RenameRecipsImageColumnToRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :recips_image, :recipe_image
  end
end
