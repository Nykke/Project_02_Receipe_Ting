class Comment < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :user
  
  # validates :title, :author, :body, :presence => true
end
