class SessionsController < ApplicationController	
	before_action :logged_in_redirect, only: [:new, :create]
	 def new	
	end
	
	def create
	user = User.find_by(username: params[:session][:username])
	if user && user.authenticate(params[:session][:password])
		session[:user_id] = user.id
		flash[:success] = "You logged in suceessfully."
		redirect_to root_path
	else
		flash.now[:error] = "there is somethinmg wrong with your login info."
		render 'new'
	end
	end
	def destroy
		session[:user_id] = nil
		flash[:success] = "youn have successfully logged out"
		redirect_to login_path
	end
	def logged_in_redirect
		if logged_in?
			flash[:error] = "You are alerady logged in"
			redirect_to root_path
		end
	end
end
