class Plane < ApplicationRecord
  belongs_to :manufacturer
  has_one_attached :image
  validates :model, presence: true
  validates :model, length: {minimum: 2}
  validates :model, :description, presence: true
end
