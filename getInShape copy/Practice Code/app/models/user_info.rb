class UserInfo < ActiveRecord::Base
belongs_to :user
validates :FirstName, :presence => true, :message => "Sorry you must enter a First Name"
validates :LastName, :presence => true, :message => "Sorry you must enter a Last Name"
validates :Username, :presence => true, :uniqueness => true, :message => "Sorry that username has been taken, please choose another."
validates :Password, :presence => true, :length => { :minimum => 8 }, :inclusion => { :in => [1,2,3,4,5,6,7,8,9] }, :message => "Password Invalid, please create a password with at least 8 characters, and with a least one numeric character."
validates :Sports, :presence => true
validates :Longitude, :presence => true, :numericality => true
validates :Latitude, :presence => true, :numericality => true
validates :TravelRadius, :presence => true, :numericality => true
validates :Descriptions, :presence => true
end

