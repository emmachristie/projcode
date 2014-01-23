class User < ActiveRecord::Base
	# validates_presence_of :Sports
	# has_many :Sports

	#attr_accessible :Location, :Latitude, :Longitude
	geocoded_by :Location
	after_validation :geocode, :if => :Location_changed?


	
end
