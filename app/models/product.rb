class Product < ApplicationRecord
  belongs_to :category
  validates :name, :price, :photo_image, :description, presence: true
  validates :title, uniqueness
  validates :price, numericality: {only_integers: true}
end
