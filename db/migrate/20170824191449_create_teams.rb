class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :teamId
      t.string :city
      t.string :fullName
      t.string :nickname

      t.timestamps
    end
  end
end
