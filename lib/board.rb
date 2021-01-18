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
end