# == Schema Information
#
# Table name: effects
#
#  id             :integer          not null, primary key
#  base_cost      :float
#  base_duration  :integer
#  base_integer   :integer
#  base_magnitude :integer
#  description    :string
#  is_poison      :boolean
#  name           :string
#  value          :integer
#  internal_id    :string
#
class Effect < ApplicationRecord
  has_and_belongs_to_many :ingredients
end
