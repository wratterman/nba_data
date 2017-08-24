class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :nba_team_id
      t.string :city
      t.string :full_name
      t.string :nickname

      t.timestamps
    end
  end
end
