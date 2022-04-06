class Game
  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @role = 1
  end 

  def update_scores(role)
    if role == 2
      @p2.lives -= 1
    else
      @p1.lives -= 1
    end
  end

  def start
    puts "123"

    while @p1.lives > 0 && @p2.lives > 0
      question = Question.new
      g = question.start(@role)

      if !g
        update_scores(@role)
      end

      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"

      if @p2.lives == 0 
        puts "Player 1 wins with a score of #{@p1.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      elsif @p1.lives == 0 
        puts "Player 2 wins with a score of #{@p2.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      else 
        puts "----- NEW TURN -----"
      end

      @role = (@role == 1 ? 2 : 1)
    end

  end
end