class UpdateEffectsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :effects do |t|
      t.string :internal_id, :unique=>true
      t.string :description    
      t.float :base_cost
      t.integer :base_magnitude
      t.integer :base_duration
      t.integer :value
      t.boolean :is_poison
    end
  end
end
