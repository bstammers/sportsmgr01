class Player < ActiveRecord::Base
	before_create :create_remember_token
	has_secure_password
	validates :firstname, :lastname, :username, :email, presence: true
	validates :username, :email, uniqueness: {case_sensitive: false}

	def Player.new_remember_token
		SecureRandom.urlsafe_base64
	end
	def Player.hash(token)
		Digest::SHA1.hexdigest(token.to_s)
	end
	def isadmin?
		self.adminflag?
	end
	def ismanager?
		self.mgrflag?
	end

	private
		def create_remember_token
			self.remember_token = Player.hash(Player.new_remember_token)
		end

end
