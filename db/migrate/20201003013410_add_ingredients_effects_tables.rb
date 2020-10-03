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
  end
end
