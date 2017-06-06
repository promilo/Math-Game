class Player

	attr_accessor :lives
	def initialize(name)
		@name = name
		@lives = 3
  end

	def checklives
		if @lives == 0
      return FALSE
    else
      return TRUE
    end
  end

	def lostlives
		@lives -= 1
  end
end
