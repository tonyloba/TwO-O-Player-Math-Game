
class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name 
    @lives = 3
  end

  def count_lives
    @lives -= 1
  end

  # check the question:
  def input_question
    question = Question.new
    question.ask_question(name)
    
    input = $stdin.gets.chomp.to_i
    
    if(question.check_answer(input))
      puts "YES! You are correct."
    else 
      puts "No! Wrong answer."
      count_lives
    end
  end
end