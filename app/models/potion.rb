class Potion < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :effects
  enum type: [:poison, :potion]
end