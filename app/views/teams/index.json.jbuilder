json.array!(@teams) do |team|
  json.extract! team, :id, :teamname, :competition_id, :division_id, :teammgr, :played, :won, :lost, :tied, :sets_won, :sets_lost, :points_for, :points_against, :sets_percent, :points_percent, :comp_points
  json.url team_url(team, format: :json)
end
