class Ingredient < ApplicationRecord
  has_many :doses
  has_many :reviews
  validates :name, uniqueness: true, presence: true
end
