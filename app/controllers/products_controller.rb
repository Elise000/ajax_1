class ProductsController < ApplicationController
		
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save!

		respond_to do |format|
			format.html { redirect_to root_path }
			format.js #render a file in views products/create.js/erb
		end
	end

	def edit
	end

	def update
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		respond_to do |format|
	    format.html { redirect_to root_path }
	    format.js { }
  	end
	end

	private

	def product_params
		params.require(:product).permit(:name, :price)
	end

end
