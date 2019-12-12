class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  with_options presence: true do
    validates :name
    validates :text
    validates :price
    validates :condition
    validates :shipping_charge
    validates :shipping_place
    validates :shipping_date
    validates :image, unless: :image?
  end
  mount_uploader :image, ImageUploader


  def self.search(search)
    return Product.all unless search
    Product.where('text LIKE(?)', "%#{search}%")
  end
end
