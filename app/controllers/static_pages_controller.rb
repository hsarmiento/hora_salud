class StaticPagesController < ApplicationController
	def home
		@states = HsState.all
		@townships = HsTownship.all
	end

	def contact
		
	end

	def enviar
		email = params[:email]
		nombre = params[:nombre]
		telefono = params[:telefono]
		comentario = params[:comentario]
		body = "nombre:#{nombre}\r\n email:#{email}\r\n telefono:#{telefono} \r\n comentario:#{comentario}"
		ContactMailer.contact_us(email,nombre,body).deliver
		redirect_to contacto_path
	end
end
