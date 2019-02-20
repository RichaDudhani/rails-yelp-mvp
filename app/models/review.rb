class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }, numericality: true
end
