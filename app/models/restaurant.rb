class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  cusines = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: cusines }
end
