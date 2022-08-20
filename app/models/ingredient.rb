# == Schema Information
#
# Table name: ingredients
#
#  id             :integer          not null, primary key
#  expansion_pack :string
#  image_url      :string
#  name           :string
#  value          :integer
#  weight         :float
#
class Ingredient < ApplicationRecord
  has_and_belongs_to_many :effects
end
