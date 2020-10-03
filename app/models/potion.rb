class Potion < ApplicationRecord
  has_many :ingredients
  has_many :effects, :through => :ingredients
  enum type: [:poison, :potion]
end