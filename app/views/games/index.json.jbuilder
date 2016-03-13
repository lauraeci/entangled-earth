json.array!(@games) do |game|
  json.extract! game, :id, :level, :player1, :player2, :objective_count, :winner
  json.url game_url(game, format: :json)
end
