class Player < ActiveRecord::Base
	validates :firstname, :lastname, :username, :email, presence: true
	validates :username, :email, uniqueness: true, case_sensitive: false
end
