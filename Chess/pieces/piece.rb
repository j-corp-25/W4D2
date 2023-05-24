class Piece

    def initialize(color, board, pos,symbol)
        @color = color
        @board = board
        @pos = pos
        @symbol = symbol
    end

    def to_s(symbol)
        self.to_s = symbol
    end

    def empty?
    end

    def valid_moves

    end

    def pos=(val)

    end

    def inspect
        return @symbol
    end

end
