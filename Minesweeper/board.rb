class Board
  attr_reader :grid

  def initialize(grid = self.create_grid)
    @grid = grid
  end

  def self.create_grid
    Array.new(9){Array.new(9)}
  end

  def [](pos)
    x,y = pos
    grid[x][y]
  end

  def []=(pos, val)
    x,y = pos
    grid[x][y] = val
  end

  def render
    puts "(0..8).to_a.join(" ")"
    grid.each_with_index do |row, i|
      puts "#{i} #{row.join(" ")}"
    end
  end


end
