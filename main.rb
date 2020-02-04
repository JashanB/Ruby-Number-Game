require "./question"
require "./player"

class Game 
  player1 = Player.new
  player2 = Player.new
  @player1Lives = player1.lives
  @player2Lives = player2.lives

  player1.changeTurn
  while player1.lives > 0 && player2.lives > 0 do
    if player1.turn 
      player1.changeTurn
      puts "Player 1's turn"
      question = Question.new
      number = gets.chomp.to_i
      if question.input(number) == true
        puts "Yes you are correct!"
        # player1.changeTurn
        player2.changeTurn
        puts "P1 #{@player1Lives} P2 #{@player2Lives} "
        puts "----New Turn----"
      elsif question.input(number) == false
        puts "No!"
        player1.minusLife
        # player1.changeTurn
        player2.changeTurn
        puts "P1 #{player1.lives} P2 #{player2.lives} "
        puts "----New Turn----"
      end
    elsif player2.turn
      puts "Player 2's turn"
      question = Question.new
      number = gets.chomp.to_i
      if question.input(number) == true
        puts "Yes you are correct!"
        player1.changeTurn
        player2.changeTurn
        puts "P1 #{player1.lives} P2 #{player2.lives} "
        puts "----New Turn----"
      elsif question.input(number) == false
        puts "No!"
        player2.minusLife
        player1.changeTurn
        player2.changeTurn
        puts "P1 #{player1.lives} P2 #{player2.lives} "
        puts "----New Turn----"
      end
    end

  end 

  if player1.lives == 0 || player2.lives == 0
    puts "Game over"

  end
  
end 
