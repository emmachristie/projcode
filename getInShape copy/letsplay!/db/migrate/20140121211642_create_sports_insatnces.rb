class CreateSportsInsatnces < ActiveRecord::Migration
  def change
    create_table :sports_insatnces do |t|
      t.string :sport
      t.integer :user_id

      t.timestamps
    end
  end
end
