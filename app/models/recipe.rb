class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments

  # validates :title, :ingredients, :img_url, :directions, :presence => true
end
