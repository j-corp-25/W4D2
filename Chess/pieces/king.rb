require "stepable"
require_relative "piece"

class King < Piece

include Stepable

def initialize
    @symbol = "♚"
end

def inspect
   return @symbol
end


end