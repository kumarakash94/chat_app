class SessionsController < ApplicationController
	def new	
	end
	def create
	user = User,find_by(username: params[:session][:username])
	if user && user.authenticate(params[:session][:password])
		session[:user_id] = user.id
		flash[:success] = "You logged in suceessfully."
		redirect_to root_path

	
	
	else
		flash.now[:error] = "there is somethinmg wrong eith your login info."
		render 'new'
	end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "youn have successfully logged out"
		redirect_to login_path
	end

		
end
