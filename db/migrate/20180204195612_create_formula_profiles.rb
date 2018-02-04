class CreateFormulaProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :formula_profiles do |t|
      t.string :formula_name
      t.references :user, foreign_key: true

      t.timestamps
    end
		add_index :formula_profiles, [:user_id, :created_at]
  end
end
