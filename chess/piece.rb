class Piece 
    
    def initialize(color, board, pos)
        @symbol = color
        @board = board
        @pos = pos
    end 

    def to_s 

    end 
    
    def empty?
        # return true if self.is_a?(NullPiece)
        return false
    end 

    def valid_moves
    end 

    def pos=(val)
        # should set board at position to be self
    end 

    def Symbol
    end 

    private 

    def move_into_check?(end_pos)
        if 

        return false
    end
    
end 
