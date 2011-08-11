$:.unshift('.')

module BATTLESHIPS
  HIT_MARKER = ' #'
  FIRE_MARKER = ' X'
  CELL_MARKER = '[]'
  SHIP_MARKER = '||'
  NUM_BOATS = 5
  FACE_COMPUTER_OPPONENT = true
  GRID_SIZE = 10
  PHRASES = [
"You got one!",
"*BOOM!!! SPLOSH...*",
"*KABOOM!!! Tinkle Tinkle Plip Plop Drip*",
"*CRUNCH BOOM!!!*",
"Great shot Captain!",
"Masterful choice Captain!",
"I envy your skill Captain!",
"Incredible shot, Captain!",
"She won't be coming back Captain!",
"Taking out boats this fast, the enemy doesn't stand a change Captain!"
    ]
end

require 'game'

puts
puts '############################################'
puts '                            1/2 PLAYER     '
puts '           |                BATTLESHIPS     '
puts '        ___|_|                 FOR          '
puts '      /   [] |     _//       TERMINAL       '
puts '_____|_______|____|_|__                     '
puts '   BATTLESHIP-1       /~~~~~~~~~~~~~~~~~~~~~'
puts '                     /                      '
puts '############################################'
puts

choice = 'y'
puts 'Would you like to play against the computer? [y/n]:
'
choice = gets.chomp.downcase

against_computer = BATTLESHIPS::FACE_COMPUTER_OPPONENT
case choice
  when 'n'
    against_computer = false
end

#grid_size = 10
#

game = Game.new(against_computer, BATTLESHIPS::GRID_SIZE)
game.start

puts
puts '############################################'
puts '              ---GAME OVER---   .     .     '
puts '       .    .         ..    .   .   .  .    '
puts '        ..   .       .    .       . ..  .   '
puts '          ..            ______     .  ..  . '
puts '       . _____.  .      \     \   .  ____  .'  
puts '~~~~~~~~|   []|~~~~~~~~~~\     \~~~~/   /~~~'   
puts '         \____| < / /      \/\-_\ /_/\_/    '
puts '############################################'
puts
