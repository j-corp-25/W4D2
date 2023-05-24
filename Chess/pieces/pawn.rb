require_relative "piece"

class Pawn < Piece

def initialize(color, board, pos, symbol)
    @symbol = "♟︎"
end

def inspect
   return @symbol
end


end
