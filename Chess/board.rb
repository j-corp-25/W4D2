require_relative "piece"
require_relative "NullPiece"


class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}


        @rows.each_with_index do |row, idx|
            row.each_with_index do | col, idx2|
                if [0,1,6,7].include?(idx)
                    @rows[idx][idx2] = Piece.new(:white)
                # else
                #     @rows[idx][idx2] = NullPiece.new
                end
            end
        end

    end


    def [](pos)
      row, col = pos
      @rows[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end


    def move_piece(start_pos, end_pos)
        raise "no piece there" if self[start_pos] == nil

       self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end


end
