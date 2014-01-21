class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
    	t.string :FirstName
	   	t.string :LastName
	   	t.string :Username
	   	t.string :Password
	   	t.string :Sports
	   	t.float :Longitude
	   	t.float :Latititude
	   	t.integer :TravelRadius
	   	t.text :Descriptions

      t.timestamps
    end
  end
end
