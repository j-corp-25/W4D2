require "slideable"
require_relative "piece"

class Bishop < Piece

include Slideable

def initialize
    @symbol = "♝"
end

def inspect
   return @symbol
end


end