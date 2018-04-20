class Tile
  attr_accessor :revealed, :bomb

  def initialize(revealed = false, bomb= false, flagged = false)
    @revealed = revealed
    @bomb = bomb
    @flagged = flagged
  end



end
