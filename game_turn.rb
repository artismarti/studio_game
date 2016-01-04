require_relative 'player'
require_relative 'die'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    number_rolled = die.roll
    case number_rolled
    when 1..2
      player.blam
    when 3..5
      puts "\n#{player.name} was skipped."
    else
      player.w00t
    end
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end
