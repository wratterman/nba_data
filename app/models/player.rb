class Player < ApplicationRecord

  def self.find_all
    NbaService.find_all_players.map do |attr|
      Player.from_api(attr)
    end
  end

  def self.from_api(attr)
    where(person_id: attr[:personId]).first_or_create do |new_player|
      new_player.nba_team_id        = teams_sanitizer(attr)
      new_player.person_id          = attr[:personId]
      new_player.first_name         = attr[:firstName]
      new_player.last_name          = attr[:lastName]
      new_player.date_of_birth_utc  = attr[:dateOfBirthUTC]
      new_player.height_in_feet     = attr[:heightFeet]
      new_player.height_in_inches   = attr[:heightInches]
      new_player.weight_in_ounds    = attr[:weightPounds]
    end
  end

  def self.teams_sanitizer(attributes)
    if attributes[:teams].empty?
      "N/A"
    else
      attributes[:teams].last[:teamId]
    end
  end

  def full_name
    first_name + " " + last_name
  end
end
