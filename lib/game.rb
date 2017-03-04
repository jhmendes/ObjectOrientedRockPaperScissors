class Game

  WIN_MAX = 2
  
  def initialize
    @rounds = []
  end

  def complete?
    wins[:computer] >= WIN_MAX || wins[:player] >= WIN_MAX
  end

  def standings
    "Player Score: #{wins[:player]}, Computer Score: #{wins[:computer]}"
  end

  def wins
    calculated_wins = {
      player: 0,
      computer: 0
    }

    @rounds.each do |round|
      if round.winner
        calculated_wins[round.winner] += 1
      end
    end

    calculated_wins
  end

  def log_round(round)
    @rounds << round
  end
end
