class Category < ApplicationRecord
  # nice, you could also convert this to a many-to-many, but you'd have to add an additional model called categorizations that links a category to a recipe.
  has_many :recipes
end
