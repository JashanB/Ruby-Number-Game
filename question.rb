class Question 
  attr_reader :answer
  def initialize 
    one = rand(21)
    two = rand(21)
    @answer = one + two
    puts "What does #{one} + #{two} equal?"
  end

  def input(userInput)
    if userInput == answer
      return true
    else 
      return false
    end 
  end 
end
