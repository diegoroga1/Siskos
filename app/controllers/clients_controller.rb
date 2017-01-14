class ClientsController < ApplicationController

	def new
		@client = Client.new	
	end

	def create
		@client = Client.new(params[:client])
		if @client.save	
			flash[:notice] = "Yeah"
			flash[:color] = "valid" 
		else
			flash[:notice] = "Wrong"
			flash[:color] = "invalid"
		end
		render "new"
	end

	

end
