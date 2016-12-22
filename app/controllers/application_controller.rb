class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
private
	def signin_required
		if !current_user
			redirect_to new_session_url, alert: "Please sgin in"
		end

	end

	def signup_required
		if !current_user
			redirect_to signup_path, alert: "Please sign up"
		end

	end

	def current_user
		User.find(session[:user_id]) if session[:user_id]
	end

	helper_method :current_user
end
