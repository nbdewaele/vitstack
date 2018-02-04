class FormulaProfile < ApplicationRecord
  belongs_to :user
	has_many :ingredient
	# validates :formula_name, :presence => true
end
