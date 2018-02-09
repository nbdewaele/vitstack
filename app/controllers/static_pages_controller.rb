class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

	def contact
  end

	# def login
  # end
	def new
		@formula_profile = FormulaProfile.new
	end

	def create
		@formula_profile = FormulaProfile.new(formula_profile_params)
    if @formula_profile.save
      flash[:info] = "Awesome-sauce, let's add ingredients to your profile"
			# do I redirect to ingredients or formula profile to add ingredients
      # redirect_to root_url
    else
      render 'new'
    end
	end

	private

    def formula_profile_params
      params.require(:formula_profile).permit(:formula_name)
    end
end
