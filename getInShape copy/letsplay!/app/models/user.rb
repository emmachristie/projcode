class User < ActiveRecord::Base
	# validates_presence_of :Sports
	# has_many :Sports
	acts_as_messageable
	
end
