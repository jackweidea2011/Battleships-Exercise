require 'player'

class Game
  attr_reader :grid_size
  
  def initialize(ai = true, grid_size = 5)
    @grid_size = grid_size
    @player_one = HumanPlayer.new(grid_size)
    @player_two = ai ? ComputerPlayer.new(grid_size) : HumanPlayer.new(grid_size)
  end
  
  def start
    puts "Player 1, place your boats! The grid is #{grid_size} x #{grid_size}"
    @player_one.place_boats
    system "clear"
    puts "Player 2, place your boats! The grid is #{grid_size} x #{grid_size}"
    @player_two.place_boats
    system "clear"
    
    while @player_one.alive? && @player_two.alive? do
      puts "Player 1's Turn!"
      @player_one.print_grid
      puts
      puts "Your opponent has #{@player_two.boats.count} boats left."
      puts
      puts "You have #{@player_one.boats.count} boats left."
      puts
      x,y = @player_one.get_coords
      @player_one.fire_upon(@player_two, x, y)
      system "clear"
      
      puts "Player 2's Turn!"
      @player_two.print_grid
      puts
      puts "Your opponent has #{@player_one.boats.count} boats left."
      puts
      puts "You have #{@player_two.boats.count} boats left."
      puts
      x,y = @player_two.get_coords
      @player_two.fire_upon(@player_one, x, y)
      system "clear"
    end
    
    puts 'Game was a draw' if !@player_one.alive? && !@player_two.alive?
    puts 'Player One wins' if !@player_two.alive? && @player_one.alive?
    puts 'Player Two wins' if !@player_one.alive? && @player_two.alive?
  end
end