class RenameOldTableToNewTable < ActiveRecord::Migration
   def self.up
        rename_table :sports_insatnces, :sport_instances
    end 
    def self.down
        rename_table :sport_instances, :sports_insatnces
    end
 end