class ContactsController < ApplicationController

	def new
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
    if contact.save
		redirect_to "/index", notice: "Your contact has been added!"
		else
		redirect_to "/contacts/new", notice: "Please input the required fields"
		end

	end

	def view
    if @user = User.blank?
      redirect_to "/index", notice: "Please sign in"
    else
		@contact_list = Contact.all
  end
	end

def edit
    @contact = Contact.find_by(:id => params[:contact_id])
  end

  def update
	contact = Contact.find_by(:id => params[:contact_id])
	contact.fname = params["fname"]
	contact.lname = params["lname"]
	contact.email = params["email"]
	contact.number = params["number"]
	contact.company = params["company"]
	contact.date = params["date"]
	contact.notes = params["notes"]
	contact.save
	redirect_to "/index", notice: "Your contact has been updated!"
  end

  def destroy
    contact = Contact.find_by(:id => params[:contact_id])
    contact.destroy
    redirect_to "/index", notice: "Your contact has been deleted!"
end

end
