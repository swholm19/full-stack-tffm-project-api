class AddLeagueRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :league, foreign_key: true
  end
end
