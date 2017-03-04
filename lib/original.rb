# - PlayerTurn
#   - represent the players selection (r, p, or s)
# - ComputerTurn
#   - represent the randomly generated computer selection
# - Game
#   - keep track of the wins
# - Round
#   - determine the winner based on turns

require_relative 'game'
require_relative 'player_turn'
require_relative 'computer_turn'
require_relative 'round'

game = Game.new

#
while !game.complete?
  puts game.standings
  puts
  player_choice = nil

  player_turn = nil
  #play a round
  while player_turn.nil? || !player_turn.valid?
    print "Choose rock (r), paper (p), or scissors (s): "
    player_choice = gets.chomp
    player_turn = PlayerTurn.new(player_choice)
  end

  computer_turn = ComputerTurn.new

  puts "Player chose #{player_turn.humanized_selection}."
  puts "Computer chose #{computer_turn.humanized_selection}"

  round = Round.new(player_turn, computer_turn)
  winner = round.winner

  #output results
  if winner == :computer
    puts "#{computer_turn.humanized_selection} beats #{player_turn.humanized_selection}"
    puts "Computer wins!"
  elsif winner
    puts "#{player_turn.humanized_selection} beats #{computer_turn.humanized_selection}"
    puts "Player wins!"
  else
    puts "It's a tie"
  end

  game.log_round(round)
end
