require "./question"
require "./player"

p = Player.new("Player", 3)

puts p.stat_string
p.damage
puts p.stat_string
puts "dead? " + p.dead?.inspect
p.damage
puts p.stat_string
puts "dead? " + p.dead?.inspect
p.damage
puts p.stat_string
puts "dead? " + p.dead?.inspect