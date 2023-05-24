# require "slideable"
require_relative "piece"

class Rook < Piece

# include Slideable
def initialize(color, board, pos,symbol)
    @symbol = "♜"
end

def inspect
   return @symbol
end


end
