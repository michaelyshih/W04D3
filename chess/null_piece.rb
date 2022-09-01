require_relative 'piece'

def NullPiece < Piece

    include Singleton
    attr_reader :color, :symbol

    def initialize
        @color = nil
    end 

    def moves 
        @moves = []
    end 
    
    def symbol
        @symbol = " "
    end 

    def empty?
        return true
    end

end 