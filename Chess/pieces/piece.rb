class Piece
    attr_reader :color, :pos

    def initialize(color, board, pos,symbol)
        @color = color
        @board = board
        @pos = pos
        @symbol = symbol
    end

    def empty?
        if self.pos == NullPiece
            return true
        else
            false
        end

    end

    def valid_move?(move)
        if move.empty?



    end

    def pos=(val)

    end

    def inspect
        return @symbol
    end

end
