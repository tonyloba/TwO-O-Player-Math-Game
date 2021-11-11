class Question  

  def initialize
    # set 2 random numbers between 1-20
    @qest_num1 = rand(1...40) 
    @qest_num2 = rand(1...40)
    @answer = @qest_num1 * @qest_num2 
  end

  def ask_question(name)
    puts "#{name}: What does #{@qest_num1} multiply #{@qest_num2} equal ?"
  end

  def check_answer(input)
    @answer == input
  end

end

