class Game

  attr_accessor :currentPlayer
  def initialize(player1, player2)
		@player1 = player1
    @player2 = player2
    @currentPlayer = player1
  end


	def changeTurn
		if @currentPlayer == @player1
      @currentPlayer = @player2
		else
		     @currentPlayer = @player1
    end
  end
end
