class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments
  has_many :photos

  validates :image, :text, :size, :name, :price, :condition, :shipping_charge, :shipping_how, :shipping_date, :shipping_place, presence: true
end
