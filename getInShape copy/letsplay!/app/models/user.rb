class User < ActiveRecord::Base
	# validates_presence_of :Sports
	# has_many :Sports

	#attr_accessible :Location, :Latitude, :Longitude
	geocoded_by :Location
	after_validation :geocode, :if => :Location_changed?
<<<<<<< HEAD


=======
>>>>>>> 5ee7266dc3495b538627806c99aed387cb48b3ba
	
	acts_as_messageable

	def name
		return @user.FirstName @user.LastName
	end

end
