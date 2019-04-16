class Game

    def initialize
        puts 'Player 1, enter your name: '
        @player1 = Player.new
        puts 'Player 2, enter your name: '
        @player2 = Player.new
        puts '==============='
        @current_player = @player1
        self.new_game
    end

    def new_game
        puts 'Welcome to a silly math game...'
        puts "#{@current_player.name}, you're up first!"
        puts '================='
        self.new_question
    end

    def new_question
        number1 = rand(1...10)
        number2 = rand(1...10)
        correct_answer = "#{number1 + number2}"
        puts "What is #{number1} plus #{number2}?"
        answer = gets.chomp
        if answer == correct_answer
            puts 'Correct'
            puts "============"
            self.switch_turn
            sleep(1)
            puts "#{@current_player.name}, your turn"
            puts "============"
            self.game_loop

        else
            puts 'Wrong'
            puts "============"
            @current_player.lose_life
            self.switch_turn
            sleep(1)
            puts "#{@current_player.name}, your turn"
            puts "============"
            self.game_loop
        end
    end

    def game_loop
        if @player1.lives > 0 && @player2.lives > 0
            self.new_question
        else
            puts 'Game over. Thanks for playing.'
        end
    end

    def switch_turn
        @current_player = @current_player == @player1 ? @player2 : @player1
    end

end

class Player
    attr_accessor :name, :lives

    def initialize
        @lives = 3
        @name = gets.chomp
    end

    def lose_life
        @lives -= 1
    end
end


game1 = Game.new





