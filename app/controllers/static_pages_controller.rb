class StaticPagesController < ApplicationController
  def home
		  @formula_profile = FormulaProfile.new
  end

  def help
  end

  def about
  end

	def contact
  end

	# def login
  # end
end
