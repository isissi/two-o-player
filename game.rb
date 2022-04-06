class Game
  attr_accessor :round_count, :p1, :p2

  def initialize
    @round_count = 0
    @p1 = 3
    @p2 = 3
    @role = 1
  end 

  def update_scores(p)
    if p == 2
      @p2 -= 1
    else
      @p1 -= 1
    end
  end

  def turn(count)
    if count.even?
      @role = 2
    else
      @role = 1
    end
  end

  def start
    puts "123"

    while @p1 != 0 && @p2 != 0
      @round_count += 1
      turn(@round_count)

      if @round_count != 1 
        puts "----- NEW TURN -----"
      end

      question = Question.new
      g = question.start(@role)

      if !g
        update_scores(@role)
      end

      puts "P1: #{@p1}/3 vs P2: #{@p2}/3"
    end

    if @p1 == 0 
      puts "Player 1 wins with a score of #{@p1}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

    if @p2 == 0 
      puts "Player 2 wins with a score of #{@p2}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end
end