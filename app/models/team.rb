class Team < ApplicationRecord

  def self.find_all
    NbaService.find_all_teams.map do |attr|
      Team.from_api(attr)
    end
  end

  def self.from_api(attr)
    where(teamId: attr[:teamId]).first_or_create do |new_user|
      new_user.teamId    = attr[:teamId]
      new_user.city      = attr[:city]
      new_user.fullName  = attr[:fullName]
      new_user.nickname  = attr[:nickname]
    end
  end
end
