class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images
  
  validates :text, :name, :price, :condition, :shipping_charge, :shipping_how, :shipping_date, :shipping_place, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
