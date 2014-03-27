class SessionsController < ApplicationController
	def new
	end
	def create
		player = Player.find_by(username: params[:session][:username].downcase)
		if player && player.authenticate(params[:session][:password])
			sign_in player
			if player.isadmin?
				redirect_to admin_path
			else
				redirect_to player
			end
		else
			flash.now[:error] = 'Invalid username/password combination'
			render 'new'
		end
	end
	def destroy
		sign_out
		redirect_to root_url
	end
end
