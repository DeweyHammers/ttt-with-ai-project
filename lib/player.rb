class Player
    attr_accessor :is_winner
    attr_reader :token 

    def initialize(token)
        @token = token
        @is_winner = "no"
    end
end