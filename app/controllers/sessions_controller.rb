class SessionsController < ApplicationController
	def new
    @users = User.all
    @levels = Level.all
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back, #{user.name}"
			redirect_to user
		else
			flash.now[:alert] = "Incorrect pass/email"
			redirect_to root_path
		end
	end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Now you're signed out!"
  end
end

