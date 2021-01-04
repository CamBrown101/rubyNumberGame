require './user.rb'
require './questions.rb'

questions = Questions.new()
puts "Player One Name:"
playerOneName = gets.chomp
puts "Player Two Name:"
playerTwoName = gets.chomp

puts "#{playerOneName} is player one"
playerOne = User.new(playerOneName)
puts "#{playerTwoName} is player two"
playerTwo = User.new(playerTwoName)

while playerOne.lives != 0 and playerTwo.lives != 0
    puts "---New Round---"
    puts"#{playerOne.name}'s turn"
    questions.newQuestion()
    puts questions.question
    playerOneAns = gets.chomp.to_i
    puts questions.answer
    if playerOneAns === questions.answer
      puts "Correct"
    else
      puts "Wrong"
      playerOne.loseLife()
    end

    puts"#{playerTwo.name}'s turn"
    questions.newQuestion()
    puts questions.question
    playerTwoAns = gets.chomp.to_i
    puts questions.answer
    if playerTwoAns === questions.answer
      puts "Correct"
    else
      puts "Wrong"
      playerTwo.loseLife()
    end
end

if playerOne.lives == 0 and playerTwo.lives == 0
  puts"Game Over, It's a draw..."
elsif playerOne.lives == 0
  puts"Game Over, #{playerTwo.name} Wins!"
else
  puts"Game Over, #{playerOne.name} Wins!"
end