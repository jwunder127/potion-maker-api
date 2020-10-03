class AddIngredientsEffectsTables < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :value
      t.string :image_url
    end

    create_table :effects do |t|
      t.string :name
    end

    create_table :potions do |t|
      t.string :name
      t.integer :value
      t.boolean :is_poison
      t.integer :type
    end

    create_join_table :effects, :ingredients do |t|
      t.index [:effect_id, :ingredient_id], :unique => true
    end
    create_join_table :effects, :potions do |t|
      t.index [:effect_id, :potion_id], :unique => true
    end
    create_join_table :ingredients, :potions do |t|
      t.index [:ingredient_id, :potion_id], :unique => true
    end
  end
end
