require 'digest/sha1'
class Client < ApplicationRecord
	has_one :cart
	has_many :products
	
	attr_accessor :password
	before_save :encrypt_password
	after_save :clear_password

  	EMAIL_REGEX = /\A\S+@.+\.\S+\z/
	validates :name, :length => { :in => 3..20, too_short: "Demasiado corto, debe tener al menos 3 caracteres", too_long:"Demasiado largo, debe tener como máximo 20 caracteres"}
  	validates :surname, :length => { :in => 3..30, too_short: "Demasiado corto, debe tener al menos 3 caracteres", too_long:"Demasiado largo, debe tener como máximo 30 caracteres"}
	validates :email, :length => { :in => 3..30, too_short: "Demasiado corto, debe tener al menos 3 caracteres", too_long:"Demasiado largo, debe tener como máximo 30 caracteres" }, format: {multiline: true, with: EMAIL_REGEX, message: "Formato del correo no valido"}
	validates :address, :length => { :in => 3..40, too_short: "Demasiado corto, debe tener al menos 3 caracteres", too_long:"Demasiado largo, debe tener como máximo 40 caracteres" }
  	validates :password, :length => {:in => 6..20, too_short: "Demasiado corto, debe tener al menos 3 caracteres", too_long:"Demasiado largo, debe tener como máximo 30 caracteres"}, :on => :create
	validates_uniqueness_of :surname, :email, :message => "Debe ser único"
	validates_presence_of :name, :surname, :email, :address, :password, :message => "No puede estar en blanco"


	def self.authenticate(email,password)
		client = find_by_email(email)
		return client if client && client.authenticated?(password)
	end
	def authenticated?(password)
		self.hashed_password == encrypt(password)
	end

	protected
		def encrypt_password
  			return if password.blank?
			self.hashed_password = encrypt(password)
		end

		def encrypt(string)
			Digest::SHA1.hexdigest(string)
		end

		def clear_password
			self.name = nil
			self.surname = nil
			self.email = nil
			self.address = nil
  			self.password = nil
		end
end
