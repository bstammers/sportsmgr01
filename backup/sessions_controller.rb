class SessionsController < ApplicationController
	def new
	end
	def create
		player = Player.find_by(username: params[:session][:username].downcase)
		if player && player.authenticate(params[:session][:password])
			sign_in player
			redirect_to player
		else
			flash.now[:error] = 'Invalid username/password combination'
			render 'new'
		end
	end
	def destroy
		sign_out
		redirect_to root_url
	end
		def sign_in(player)
		remember_token = Player.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		player.update_attribute(:remember_token, Player.hash(remember_token))
		self.current_player = player
	end

end
