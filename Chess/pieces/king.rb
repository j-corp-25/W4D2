# require "stepable"
require_relative "piece"

class King < Piece

# include Stepable

def initialize(color, board, pos,symbol)
    @symbol = "♚"
end

def inspect
   return @symbol
end


end