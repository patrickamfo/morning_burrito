class Challenge < ApplicationRecord
  validates :name, :description, :length, :category, presence: true
  validates :name, uniqueness: true
end
