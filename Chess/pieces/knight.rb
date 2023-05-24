require "stepable"
require_relative "piece"

class Knight < Piece

include Stepable

def initialize(color, board, pos, symbol)
    @symbol = "♞"
end

def inspect
   return @symbol
end

protected

def move_diffs
    moves = []
    [1, -1].each do |ele1|
        [2, -2].each do |ele2|
            moves << [ele1, ele2] << [ele2, ele1]
        end 
    end 
    moves
end


end