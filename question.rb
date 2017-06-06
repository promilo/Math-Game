
class Question_manager
	def initialize
		@questions = ["1+2", "1+1", "2+2", "1+2", "1+1", "2+2", "1+2", "1+1", "2+2", "1+2", "1+1", "2+2" ]
		@answers = [3,2,4,3,2,4,3,2,4,3,2,4,3,2,4]
		@question_index = 0
  end

	def display_question
		puts " what is #{@questions[@question_index]}"
  end

	def checkanswer

		@question_index += 1
    puts @answers[@question_index - 1]
    return @answers[@question_index - 1]
  end

  def wrong
		puts "wrong message"
  end
end
