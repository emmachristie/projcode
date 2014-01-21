class RemoveColumns < ActiveRecord::Migration
  def self.up
  	remove_column :users, :Sports
  end
  def change
  end
end
