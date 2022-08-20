class AddWeightToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :weight, :float
  end
end
