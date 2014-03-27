class Division < ActiveRecord::Base
	validates :divname, presence: true
	validates :divname, uniqueness: {case_sensitive: false}
	belongs_to :competition
	validates :competition_id, presence: true
end
