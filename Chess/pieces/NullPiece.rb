require_relative "piece"
require "singleton"

class NullPiece < Piece
  attr_reader :symbol

  include Singleton

  def initialize
    @symbol = " "
    # @color = nil
  end

  def empty?
    true
  end

  def moves
    []
  end

end
