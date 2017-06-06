require './game'
require './question'
require './player'


p1 = Player.new("Bob")
p2 = Player.new("Cat")
q = Question_manager.new
game = Game.new(p1, p2)

while p1.checklives or p2.checklives
	puts q.display_question
	a = gets.chomp
	if a == q.checkanswer
		game.changeTurn
		puts "p1 lives #{p1.lives}, p2 lives  #{p2.lives}"
		puts "---NEW TURN---"
  else
    game.currentPlayer.lostlives
    puts "you got it wrong"
    puts "p1 lives #{p1.lives}, p2 lives  #{p2.lives}"
    puts "----New TURN ----"
    game.changeTurn
puts "GameOver"
  end
end
if p1.lives == 0
	puts "player 2 wins with their lives #{p2.lives}"
else
	puts "player 2 wins with their lives #{p2.lives}"
end
