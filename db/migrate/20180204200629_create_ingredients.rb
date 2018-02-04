class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.string :quality
      t.integer :dosage
      t.string :dosage_units
      t.string :dosage_absolute
      t.references :formula_profile, foreign_key: true

      t.timestamps
    end
		add_index :ingredients, [:formula_profiles, :created_at]
  end
end
