class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments
  # nice! I would definitely add in validations later. great thought!
  # validates :title, :ingredients, :img_url, :directions, :presence => true
end
