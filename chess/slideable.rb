module Slideable 
    private 

    HORIZONTAL_DIRS = [[0,-1], [0, 1]]
    VERTICAL_DIRS = [[-1,0],[1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1-1]]

    def grow_unblocked_moves_in_dir(dy,dx)
        # @pos
        moves = []
        if dx == 0
            moves << [@pos[0] + dy, @pos[1]]
        elsif dy == 0
            moves << [@pos[0], @pos[0] + dx]
        else
            moves << [@pos[0] + dy, @pos[1] + dx]
        end
        moves
    end

    public
    
    def horizontal_dirs 
        #target position is our next increment from curr position
        moves = []
        while @board.target_pos.is_a(NullPiece) && (0..7).include?(target_pos[0]) && (0..7).include?(target_pos[1])
            moves << grow_unblocked_moves_in_dir(1, 0)
            moves << grow_unblocked_moves_in_dir(-1, 0)
        end
        moves 
    end 

    def vertical_dirs 
        moves = []
        while @board.target_pos.is_a(NullPiece) && (0..7).include?(target_pos[0]) && (0..7).include?(target_pos[1])
            moves << grow_unblocked_moves_in_dir(0, 1)
            moves << grow_unblocked_moves_in_dir(0, -1)
        end
        moves 
    end 

    def diagonal_dirs
        moves = []
        while @board.target_pos.is_a(NullPiece) && (0..7).include?(target_pos[0]) && (0..7).include?(target_pos[1])
            moves << grow_unblocked_moves_in_dir(1, 1)
            moves << grow_unblocked_moves_in_dir(-1, -1)
            moves << grow_unblocked_moves_in_dir(1, -1)
            moves << grow_unblocked_moves_in_dir(-1, 1)
        end
        moves 
    end

    def moves 
    end 

end 