require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", rand(50..120))
player3 = Player.new("curly", rand(50..120))
player4 = Player.new("foo", rand(50..120))
player5 = Player.new("bar", rand(50..120))
player6 = Player.new("arti", rand(50..120))
player7 = Player.new("smarti", rand(50..120))
player8 = Player.new("sue", rand(50..120))

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)
knuckleheads.add_player(player6)
knuckleheads.add_player(player7)
knuckleheads.add_player(player8)
knuckleheads.play(2)
knuckleheads.print_stats
