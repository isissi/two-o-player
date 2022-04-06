class Question
  

  def initialize
    @round_count = 0
    @p1 = 3
    @p2 = 3
  end 

  def start (role)
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @result = @num1 + @num2

    puts "Player #{role}: What does #{@num1} plus #{@num2} equal?"
    print "> "

    answer = gets.chomp.to_i

    if answer == @result
      puts "Yuuuup!"
      return true
    else
      puts "Nahhhh!"
      return false
    end
  end
end