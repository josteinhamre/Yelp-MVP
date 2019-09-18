class Review < ApplicationRecord
  RATINGS = [1, 2, 3, 4, 5]
  belongs_to :resturant
  validates :resturant, presence:true
  validates :content, presence:true
  validates :rating, inclusion: { in: RATINGS }
end
