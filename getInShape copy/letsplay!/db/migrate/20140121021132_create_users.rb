class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Username
      t.string :Password
      t.string :Sports
      t.string :Location
      t.float :Longitude
      t.float :Latitude
      t.text :SelfDescription

      t.timestamps
    end
  end
end
