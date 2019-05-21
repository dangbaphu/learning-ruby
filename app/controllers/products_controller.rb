class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path, notice: "The product #{@product.name} has been created."
		else
			render "new"
		end
	end

	private def product_params
		params.require(:product).permit(:name, :image, :description, :price)
	end

	def edit
		@product = Product.find(params[:id])
	end
	
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
		redirect_to @product
		else
		render 'edit'
		end
	end
	
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path, notice:  "The product #{@product.name} has been deleted."
	end

	def import
		Product.import(params[:file])
		puts params[:file]
		redirect_to products_path, notice: "The data has been imported."
	end
end
