json.array!(@players) do |player|
  json.extract! player, :id, :firstname, :lastname, :username, :email, :password_digest, :phone, :avatar, :adminflag, :mgrflag
  json.url player_url(player, format: :json)
end
