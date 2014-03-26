json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :pointsflag, :setsflag, :mvpflag
  json.url competition_url(competition, format: :json)
end
