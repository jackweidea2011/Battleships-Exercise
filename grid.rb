class Grid
  attr_reader :grid, :grid_size
  
  def initialize(grid_size)
    @grid_size = grid_size
    @grid = []
    (1..grid_size).each do |i|
      row = []
      (1..grid_size).each do |i|
        row << BATTLESHIPS::CELL_MARKER
      end
      @grid << row 
    end
  end
  
  def print_grid
    puts
    print "  "
    [*(1..grid_size)].each { |i| print "#{i} "}
    puts
    grid.each_with_index do |row,i|
      print "#{i+1} "
      row.each do |cell|
        print cell
      end
      puts
    end
    puts
  end
end