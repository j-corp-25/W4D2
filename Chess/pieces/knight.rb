# require "stepable"
require_relative "piece"

class Knight < Piece

# include Stepable

def initialize(color, board, pos, symbol)
    @symbol = "♞"
end

def inspect
   return @symbol
end

protected

def move_diffs

end


end