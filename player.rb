require_relative 'treasure_trove'
class Player

  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def each_found_treasure
  @found_treasures.each do |name, points|
    yield Treasure.new(name,points)
  end

end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
  end

  def blam
    @health -= 10
    puts "\n#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "\n#{@name} got w00ted!"
  end

  def score
    @health + points
  end

  def strong?
    @health > 100
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s' treasures: #{@found_treasures}"
  end

  def points
    @found_treasures.values.reduce(0, :+)
  end

end

if __FILE__ == $0
  player = Player.new("foo")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
