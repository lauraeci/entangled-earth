class Game < ActiveRecord::Base

  scope :open_games, -> { where('player1 = ? or player2 = ?', 'open', 'open') }
end
