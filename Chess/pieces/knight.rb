require "stepable"
require_relative "piece"

class Knight < Piece

include Stepable

def initialize
    @symbol = "♞"
end

def inspect
   return @symbol
end

protected

def move_diffs

end


end