class Product < ApplicationRecord
	has_many :shirt
	validates_presence_of :amount,:message => "Por favor introduzca una cantidad"
	
	
end
