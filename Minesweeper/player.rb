class HumanPlayer

  def initialize

  end

  def guess
    puts "Enter a spot to guess(eg 0,0) :"
    gets.chomp.split(",").map(&:to_i)
  end

  def flag_board?
    puts "Do you want to place a flag on the board?"
    puts "Y/N"
    gets.chomp
  end

  
end
