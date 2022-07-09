class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  mount_uploader :recipe_image, RecipeImageUploader
end
