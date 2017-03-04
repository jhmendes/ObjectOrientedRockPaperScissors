class ComputerTurn
  CHARACTER_MAP = {
    "r" => "rock",
    "p" => "paper",
    "s" => "scissors"
  }

  attr_reader :selection
  
  def initialize
    @selection = ['r', 'p', 's'].sample
  end

  def humanized_selection
    CHARACTER_MAP[@selection]
  end
end
