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