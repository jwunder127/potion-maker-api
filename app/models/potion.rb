# == Schema Information
#
# Table name: potions
#
#  id        :integer          not null, primary key
#  name      :string
#  value     :integer
#  is_poison :boolean
#  type      :integer
#
class Potion < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :effects
  enum type: [:poison, :potion]
end
