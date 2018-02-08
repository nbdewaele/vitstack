class ProductFormulasController < ApplicationController
  def index
  end

  def create
		@product_formula = ProductFormula.new(product_formula_params)
    if @product_formula.save
      flash[:info] = "Awesome-sauce, let's add ingredients to your profile"
			# do I redirect to ingredients or formula profile to add ingredients
      # redirect_to root_url
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

	def new
    @formula_profile = FormulaProfile.new
  end

	private

    def product_formula_params
      params.require(:product_formula).permit(:product_formula_name)
    end
end
