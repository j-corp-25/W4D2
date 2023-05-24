require "slideable"
require_relative "piece"

class Rook < Piece

include Slideable

def initialize
    @symbol = "♜"
end

def inspect
   return @symbol
end


end