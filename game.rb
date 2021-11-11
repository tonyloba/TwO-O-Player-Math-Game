
class Game
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2) 
  end 

  def start 
    puts "Today #{@player1.name} VS #{@player2.name}"
    turn 
  end 


  def show_lives
    puts "#{@player1.name} has #{@player1.lives}/3 lives left ___ #{@player2.name} has #{@player2.lives}/3 lives left"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3 "
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player1.lives < 0
      winner(@player2)
      
    elsif @player2.lives < 0
      winner(@player1)
      
    end

  end

  def turn
    # input_question(not correct => # count_lives):
    @player1.input_question
    check_score
    @player2.input_question
    check_score
    # show_lives:
    show_lives
    puts "-----NEW TURN------"
    turn
    
  end

end

  

  