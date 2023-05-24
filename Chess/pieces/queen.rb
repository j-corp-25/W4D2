require "slideable"
require_relative "piece"

class Queen < Piece

include Slideable

def initialize
    @symbol = "♛"
end

def inspect
   return @symbol
end


end