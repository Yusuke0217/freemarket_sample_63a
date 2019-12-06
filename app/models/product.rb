class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images
  
  with_options presence: true do
    validates :name
    validates :text
    validates :price
    validates :condition
    validates :shipping_charge
    # validates :shipping_how
    validates :shipping_place
    validates :shipping_date
    validates :image, unless: :image?
  end
  # validates :text, :price, :condition, :shipping_charge, :shipping_how, :shipping_date, :shipping_place, presence: true, unless: :image?
  # validates :name, presence: true
  mount_uploader :image, ImageUploader
end
