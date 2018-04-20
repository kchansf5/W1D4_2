class Board
  attr_reader :grid

  def initialize(grid = self.create_grid)
    @grid = grid
    populate_bombs
  end

  def self.create_grid
    Array.new(9) do
      Array.new { Tile.new }
    end
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

  def populate_bombs
    bombed_pos = []
    until bombed_pos.length == 20
      pos = [rand(9), rand(9)]
      unless bombed_pos.include?(pos)
        self[pos].bomb = true
        bombed_pos << pos
      end
    end

  end


end
