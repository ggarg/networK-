class ContactsController < ApplicationController

	def add
	end

	def create
	contact = Contact.new
	contact.fname = params["fname"]
	contact.lname = params["lname"]
	contact.email = params["email"]
	contact.number = params["number"]
	contact.company = params["company"]
	contact.date = params["date"]
	contact.notes = params["notes"]
	contact.save
	# redirect_to "/index" notice: "Your contact has been added!"
	#render text: params[:addcontact].inspect
	end

	def view
		@contact_list = Contact.all
	end


end
