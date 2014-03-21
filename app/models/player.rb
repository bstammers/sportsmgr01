class Player < ActiveRecord::Base
	has_secure_password
	validates :firstname, :lastname, :username, :email, presence: true
	validates :username, :email, uniqueness: {case_sensitive: false}
end
