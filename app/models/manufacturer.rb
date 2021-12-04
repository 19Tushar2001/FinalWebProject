class Manufacturer < ApplicationRecord
  has_many:plane
  validates :name, presence: true
  validates :name, length: {minimum: 2}
end
