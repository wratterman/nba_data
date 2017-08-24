class Team < ApplicationRecord

  def self.find_all
    NbaService.find_all_teams.map do |attr|
      Team.from_api(attr)
    end
  end

  def self.from_api(attr)
    where(nba_team_id: attr[:teamId]).first_or_create do |new_team|
      new_team.nba_team_id    = attr[:teamId]
      new_team.city      = attr[:city]
      new_team.full_name  = attr[:fullName]
      new_team.nickname  = attr[:nickname]
    end
  end
end
