require_relative "piece"


class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        # @rows.each do |row|
        #     2.times do 
        #         row << Piece.new(:white)
        #     end
            #  @rows.index(row)
            # row.each do |ele|
            #     p ele.pos
            # end
        # end

    end

    p Board.new

    def [](pos)
      row, col = pos
      @rows[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end


    def move_piece(start_pos, end_pos)

    end


end