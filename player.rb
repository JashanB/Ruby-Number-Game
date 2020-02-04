class Player 
  attr_reader :lives, :turn
  def initialize
    @lives = 3
    @turn = false 
  end 

  def minusLife 
    @lives -= 1
  end

  def changeTurn 
    if @turn == false
      @turn = true
    elsif @turn == true
      @turn = false
    end
  end 

end

