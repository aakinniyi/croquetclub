class Lawnground < ActiveRecord::Base

	has_many :booklawns

	validates_presence_of :name
	validates_uniqueness_of :name

end
