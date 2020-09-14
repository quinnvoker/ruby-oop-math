# Classes

## Game

The Game class will be responsible for the core game loop as well as I/O. The game class will create two new Player objects on initialize, and run a "turn" loop until one player has no lives remaining. Each turn, a new Question will be generated and presented to the "current player" (determined by position in player array). Game will wait to receive text input, and check it against the question to determine if it is correct. If incorrect, the current player will lose a life, and if neither player is dead the game will continue and players array will be rotated. If a player is dead, the game will display the winner with their score, and terminate.

### Methods
* initialize()
  * sets up two new Player objects in an the array @players
* play()
  * displays starting message ?
  * runs game turn loop until one player is dead
  * displays winner
* ask_question()
  * generates new Question and displays it for current player to solve
  * takes text input from terminal, compares it against question's answer
  * lowers player's life counter if incorrect
* show_response(player, correct)
  * if correct, print "#{player[:name]}: YES! You are correct."
  * if incorrect, print "#{player[:name]}: Seriously? No!"
* show_stats()
  * prints players names and life counts to terminal for display
* end_game()
  * announces winner
  * displays game over message


## Player

The Player class will represent a player of the game. Each player instance will keep track of how many lives a player has and if they have run out of them, as well as providing a method to decrement the life counter.

### Methods
* initialize(name, life)
  * set @name to name
  * set @life to life
  * set @max_life to life
* damage()
  * decrement @life by 1
* dead?
  * returns @life < 0
* stats()
  * returns string in the format "#{name}: #{life}/#{max_life}"

## Question

The Question class will represent a particular math question. Creating a new question should generate new random numbers for use in a math question, and questions should provide a method to access the correct answer and/or check if a given answer is correct.

### Methods
* initialize()
  * generates @a and @b from random numbers 1-20
* is_answer?(answer)
  * return true if answer = @a + @b
* to_s()
  * return string in format "What does #{a} plus #{b} equal?"
