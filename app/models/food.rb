class Food < ApplicationRecord
  belongs_to :category

  validates_presence_of :title, :category, :description, :price, :image_path
end
