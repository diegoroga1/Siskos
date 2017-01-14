class CartsController < ApplicationController
	def cart
		@cart=Cart.new
	end
	def download_cart
		
		@cart=Product.all.collect{|p| [p.image_json]}
		puts "PRODUCTOS",@cart
		
	end
	
end
