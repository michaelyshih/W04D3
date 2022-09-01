require_relative "piece"


class Board 

    private 

    def populate
        (0...rows.length).each do |i|
            (0...rows.length).each do |j|
                if i == 1 || i == 6
                    {rows[i][j] = Piece.new(:pawn, self, rows[i][j])}
                elsif i == 0 || i == 7
                    {rows[i][j] = Piece.new(:various, self, rows[i][j])}
                else
                    {rows[i][j] = NullPiece.instance}
                end
        end
    end

    public 

    attr_accessor :rows

    def initialize
        @rows = Array.new(8){Array.new(8)}
        # @null_piece = NullPiece.instance
        populate
    end 



    def [](pos)
        row,col = pos
        @rows[row][col]
    end 

    def []=(pos,val)
        row, col = pos 
        @rows[row][col] = val
    end 

    def move_piece(start_pos, end_pos)
        if !(0..7).include?(start_pos[0]) || !(0..7).include?(start_pos[1]) || self[start_pos] == nil
            raise RuntimeError.new "Starting position is invalid."
        end 
        if !(0..7).include?(end_pos[0]) || !(0..7).include?(end_pos[1]) || self[end_pos] != nil
            raise RuntimeError.new "Ending position is invalid."
        end



        # self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end 

end 

