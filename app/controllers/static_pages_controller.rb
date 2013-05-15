class StaticPagesController < ApplicationController
	def home
		@states = HsState.find([7])
		@townships = HsTownship.all
		@specialties = HsSpecialty.find(:all, order: "name asc")
		@page_description = 'Hora Salud, encuentra el doctor que necesitas'
		@page_keywords = 'hora salud, doctor, buscar, encontrar, consulta, medico'

	end

	def contact
		@page_description = 'Hola Salud, encuentra el doctor que necesitas. Contactanos!'
		@page_keywords = 'hora salud, doctor, buscar, encontrar, consulta, medico, contacto'
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
