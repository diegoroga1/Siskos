class SignsUpController < ApplicationController
	def signs_up
		@client = Client.new
		flash[:notice] = nil
	end
	def create
		@client = Client.new(client_params)
		if @client.save	
			redirect_to '/' 
		else
			flash[:notice] = "Errores:"
			render :signs_up
		end
		
	end
	private
			def set_client
				@client = current_client
			end
			def client_params
	    		params.require(:client).permit(:name, :surname, :email, :address, :password)
	  		end

end
