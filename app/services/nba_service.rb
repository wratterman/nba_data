class NbaService

  def self.find_all_teams
    new.get_teams
  end

  def get_teams
    teams = Faraday.get("http://data.nba.net/10s/prod/v1/2016/teams.json")
    JSON.parse(teams.body, symbolize_names: true)[:league][:standard]
  end
end
