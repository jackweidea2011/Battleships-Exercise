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
    "BOOM! You got one!",
    "Great shot! Boat down.",
    "She won't be coming back!",
    "WAHOO!",
    "Nice! Look around close for clusters!",
    "You're a pro at sinking ships.",
    "That's a hit if I've ever seen one.",
    "BOOM! - SPLOSH!",
    "WAHAHAHAHAHA!"
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
puts 'Would you like to play against the computer? [y/n]:'
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
puts '                  GAME OVER                 '
puts '############################################'
puts

