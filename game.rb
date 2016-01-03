require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players.push(player)
  end

  def play(rounds)
    puts "There are #{@players.size} players in #{@title}:"

      1.upto(rounds) do |round|
        puts "\nRound #{round}:"
        @players.each do |player|
          GameTurn.take_turn(player)
          puts player
        end
        treasures = TreasureTrove::TREASURES
        puts "Number of treasures to be found is: #{treasures.size}."
        treasures.each do |treasure|
          puts "A #{treasure.name} is worth #{treasure.points} points."
        end
      end
  end

  def print_name_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
    strong_players, weak_players = @players.partition{|player| player.strong?}
    puts "\n#{@title} Stats:\n"
    puts "#{strong_players.length} Strong Player(s)\n"
    strong_players.each do |player|
      print_name_health(player)
    end

    puts "#{weak_players.length} Weak Player(s)\n"
    weak_players.each do |player|
      print_name_health(player)
    end

    puts "\n#{@title} High Scores:"
    sorted_players = @players.sort { |a, b| b.score <=> a.score }
    sorted_players.each do |player|
      formatted_name = (player.name).ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
  end

end
