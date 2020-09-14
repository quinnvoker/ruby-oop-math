require './player'
require './question'

class Game
  attr_reader :players

  def initialize
    @player_1 = Player.new("Player 1", 3)
    @player_2 = Player.new("Player 2", 3)
    @players = [@player_1, @player_2]
    @turn_count = 0
  end

  def ask_question
    @turn_count += 1
    puts "----- NEW TURN -----" if @turn_count > 1

    question = Question.new
    puts "#{players[0].name}: #{question}"

    print "> "
    answer = gets.chomp.to_i

    correct = question.is_answer?(answer)
    players[0].damage if !correct

    sleep 0.5
    show_response(players[0], correct)
  end

  def show_response(player, correct)
    if correct
      puts "#{player.name}: YES! You are correct."
    else 
      puts "#{player.name}: Seriously? No!"
    end
  end

  def show_stats
    puts "P1: #{@player_1.stat_string} vs P2: #{@player_2.stat_string}"
  end

  def game_over?
    @player_1.dead? || @player_2.dead?
  end

  def play
    while !game_over?
      ask_question()
      show_stats()
      @players.rotate!

      sleep 1
    end

    puts "Game over"
  end

end