require_relative 'player_turn'
require_relative 'computer_turn'

class Round
  def initialize(player_turn, computer_turn)
    @player_turn = player_turn
    @computer_turn = computer_turn
  end

  def winner
    winner = nil
    if player_choice == computer_choice
      winner = nil
    elsif player_choice == 'r' && computer_choice == 'p'
      winner = :computer
    elsif player_choice == 'r' && computer_choice == 's'
      winner = :player
    elsif player_choice == 's' && computer_choice == 'r'
      winner = :computer
    elsif player_choice == 's' && computer_choice == 'p'
      winner = :player
    elsif player_choice == 'p' && computer_choice == 'r'
      winner = :computer
    elsif player_choice == 'p' && computer-choice == 's'
      winner = :player
    end
    winner
  end

  def player_choice
    @player_turn.selection
  end

  def computer_choice
    @computer_turn.selection
  end
end
