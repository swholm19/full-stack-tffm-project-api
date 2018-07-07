class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.string :commissioner
      t.string :rules
      t.string :champion
      t.string :loser

      t.timestamps
    end
  end
end
