class Product < ApplicationRecord
  belongs_to :category
  validates :name, :price, :photo_image, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {only_integers: true}
end
