class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :restaurant_id, presence:true
  validates :content, presence:true
  validates :rating, inclusion: { in: RATINGS }
  validates :rating, numericality: { only_integer: true }
end
