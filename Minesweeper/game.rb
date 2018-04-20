class Game

  attr_reader :board, :player

  def initialize(board,player)
    @board = board
    @player = player
  end

  def play
    guess = nil
    until game_over?(guess)
      guess = take_turn
    end
  end

  def game_over?(guess)
    return false if nil
    return true if board[pos].bomb == true || board.complete?
    false
  end

  def take_turn
    board.render
    player.flag_board?
    player.guess
  end
end
