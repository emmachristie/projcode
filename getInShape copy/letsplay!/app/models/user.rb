class User < ActiveRecord::Base
	# validates_presence_of :Sports
	# has_many :Sports
<<<<<<< HEAD
	#attr_accessible :Location, :Latitude, :Longitude
	geocoded_by :Location
	after_validation :geocode, :if => :Location_changed?

=======
	acts_as_messageable
>>>>>>> d74a3e02a97e8e733d1f751c09d87610bf2909e3
	
end
