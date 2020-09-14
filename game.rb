require './player'
require './question'

class Game
  attr_reader :players

  def initialize
    @player_1 = Player.new("Player 1", 3)
    @player_2 = Player.new("Player 2", 3)
    @players = [@player_1, @player_2]
  end

  def ask_question
    question = Question.new
    puts "#{players[0].name}: #{question}"

    print "> "
    answer = gets.chomp.to_i

    correct = question.is_answer?(answer)
    if !correct
      players[0].damage
    end

    show_response(players[0], correct)
  end

  def show_response(player, correct)
    if correct
      puts "#{player.name}: YES! You are correct."
    else 
      puts "#{player.name}: Seriously? No!"
    end
  end

end