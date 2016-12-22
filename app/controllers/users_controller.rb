class UsersController < ApplicationController

	RESPONSE = HTTParty.get('http://comicvine.gamespot.com/api/characters/?api_key=88924f96eb1b6691dcb1f598483f6dde3febae45&limit=5&format=json')
	before_action :signin_required, only: [:index, :show, :edit, :update, :destroy]
	def index
		@users = User.all
    @levels = Level.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@avatars = create_avatars
		@user = User.new
	end

	def create
		@avatars = create_avatars
		user_params = params.require(:user).permit(:name, :email, :password, :password_confirmation, :image_url)

		@user = User.new(user_params)

		@user.level = Level.find_by(level_num: 1)
    if @user.save
              MailaMailer.welcome_email(@user).deliver_later
			session[:user_id] = @user.id
			redirect_to root_url, notice: "Signed up Successfully"
		else
			flash.now[:errors] = @user.errors.full_messages
			render :new
		end
	end

	def edit
		@avatars = create_avatars
		@user = User.find(params[:id])

	end

	def update
		@user = User.find(params[:id])
		user_params = params.require(:user).permit(:name, :email, :password, :password_confirmation, :image_url)
		if @user.update(user_params)
			redirect_to @user, notice: "Account updated"
		else
			flash.now[:errors] = @user.errors.full_messages
			render :edit
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		session[:user_id] = nil
		redirect_to root_url, alert: "Account deleted"
	end
	private
	def create_avatars
		avatars = []
		body = JSON.parse(RESPONSE.body)
		body["results"].each do |x|
			avatars << x['image']['icon_url']
		end
		avatars
	end
end
