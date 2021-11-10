class Game
  def initialize(player1,player2)
    @player1 = Player1.new(player1)
    @player2 = Player2.new(player2)
  end

  def start
  puts "------NEW GAME------"
  puts "Today #{@player1.name} VS #{@player2.name}"
  
  end