class SerigraphiesController < ApplicationController
	def home_serigraphy	
		@product=Product.new	
	end
	def upload_to_cart
		@product=Product.new(product_params)
		@shirt=Shirt.find_by_id(find_id)

		if not @product.amount.nil?
			@product.shirt_id=@shirt.id
			puts "IMAGEN",params[:upload][:image]
			@product.image=params[:upload][:image]
			@product.total_prize=@shirt.prize*@product.amount
			puts "IMAGEN",params[:product][:image]
		end
		if @product.save
			redirect_to '/cart'
			
		else
			render :home_serigraphy
		end
	end
	private
		def product_params
			params.require(:product).permit(:amount,:total_prize,:number_of_colors,:image_json,:observations,:width,:heigth,:image,:place_front,:place_back,:color,:size,:shirt_type)
			
		end
		def query_params
			params.require(:shirt).permit(:color,:size,:type)
		end
		def find_id
			Shirt.get_id_shirt(params[:shirt][:size],params[:shirt][:color],params[:shirt][:shirt_type])
		end
end
