class UsersController < ApplicationController
		def new
		end

		def create
		user = User.new
		user.first_name = params["fname"]
		user.password = params["password"]
			if user.save
			redirect_to "/index", notice: "Thank you for joining the networK community. Please log in and get started by adding contacts!"
			else
			redirect_to "/users/new", notice: "Please input the required fields"
			end
		end
		def show
	    @user = User.find_by(:id => params[:user_id])
    	if @user.id != session[:user_id]
      	redirect_to root_url, notice: "Nice try"
	    end
	  end

end
