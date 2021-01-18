class Board
    attr_accessor :cells

    def new_cell
        @cells = Array.new(9, " ") 
    end

    def initialize
        new_cell()
    end

    def reset!
        new_cell()
    end

    def display 
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def player_move(input)
        input.to_i - 1
    end

    def cells_count
        cells.grep(/X|O/).length
    end

    def position(input)
        @cells[player_move(input)]
    end

    def full?
        cells_count() == 9 
    end

    def turn_count
        cells_count()
    end

    def taken?(input)
        /X|O/.match?(cells[player_move(input)])
    end

    def valid_move?(input)
        /^[0-8]$/.match?(player_move(input).to_s) && !taken?(input)
    end

    def update(position, player)
        @cells[player_move(position)] = player.token if valid_move?(position) 
    end
end