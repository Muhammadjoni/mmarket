class Review < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :rating, presence: true
    validates :comment, presence: true
    validates :user_id, uniqueness: { scope: :product_id, message: "You have already reviewed this product." }
    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
