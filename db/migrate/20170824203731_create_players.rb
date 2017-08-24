class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :person_id
      t.string :nba_team_id
      t.date :date_of_birth_utc
      t.string :height_in_feet
      t.string :height_in_inches
      t.string :weight_in_ounds

      t.timestamps
    end
  end
end
