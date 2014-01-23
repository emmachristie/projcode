class User < ActiveRecord::Base
	# validates_presence_of :Sports
	# has_many :Sports

	#attr_accessible :Location, :Latitude, :Longitude
	geocoded_by :Location
	after_validation :geocode, :if => :Location_changed?
<<<<<<< HEAD
	
	acts_as_messageable
=======

>>>>>>> afb3adedeb1429ea17a384c42743c1479c900a93

	def name
		return @user.FirstName @user.LastName
	end

end
