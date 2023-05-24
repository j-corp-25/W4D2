require_relative "piece"

class Pawn < Piece

def initialize(color, board, pos, symbol)
    super(color, board, pos)
    @symbol = "♟︎"
end

def inspect
   return @symbol
end


end