class Team < ActiveRecord::Base
	validates :teamname, :teammgr, presence: true
	validates :teamname, uniqueness: {case_sensitive: false}
	belongs_to :competition
	belongs_to :division
end
