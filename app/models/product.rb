class Product < ApplicationRecord
    belongs_to :user

    has_one_attached :image
    has_many :reviews, dependent: :destroy
    has_many :order_products, dependent: :destroy
    has_many :orders, through: :order_products
    validates :name, presence: true
    validates :price, presence: true
    has_many_attached :images
    
end
