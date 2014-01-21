class CreateUserSports < ActiveRecord::Migration
  def change
    create_table :user_sports do |t|
      t.string :sport
      t.integer :user_id
      t.string :user_name

      t.timestamps
    end
  end
end
