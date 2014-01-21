class RemoveSportsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Sports, :string
  end
end
