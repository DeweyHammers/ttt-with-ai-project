class Game
    WIN_COMBINATIONS = [[0,1,2],
                        [3,4,5],
                        [6,7,8],
                        [0,3,6],
                        [1,4,7],
                        [2,5,8],
                        [0,4,8],
                        [6,4,2]]


    attr_accessor :board, :player_1, :player_2

    def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
        @player_1 = player_1
        @player_2 = player_2
        @board = board
    end

    def current_player
        @board.turn_count.even? ? player_1 : player_2
    end

    def won?
        board_compo = nil 
        WIN_COMBINATIONS.map do |combo|
            if @board.cells[combo[0]] == "X" && @board.cells[combo[1]] == "X" && @board.cells[combo[2]] == "X"
                board_compo = combo
            elsif @board.cells[combo[0]] == "O" && @board.cells[combo[1]] == "O" && @board.cells[combo[2]] == "O"
                board_compo = combo
            end
        end
        board_compo
    end

    def draw? 
        if @board.full?() 
            won?() ? false : true
        end
    end

    def over?
        won?() || draw?() ? true : false
    end

    def winner
        if over?()
            
        end
    end
end