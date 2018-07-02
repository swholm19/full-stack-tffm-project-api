class AddRosterSpotToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :roster_spot, :string
  end
end
