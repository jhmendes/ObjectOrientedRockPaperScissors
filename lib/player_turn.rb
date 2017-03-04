class PlayerTurn
  CHARACTER_MAP = {
    "r" => "rock",
    "p" => "paper",
    "s" => "scissors"
  }

  attr_reader :selection

  def initialize(selection)
    @selection = selection
  end

  def valid?
    !CHARACTER_MAP[selection].nil?
  end

  def humanized_selection
    CHARACTER_MAP[@selection]
  end
end
