require_relative "pieces/piece"
require_relative "pieces/NullPiece"


class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}


        @rows.each_with_index do |row, idx|
            row.each_with_index do | col, idx2|
                if idx == 1
                    @rows[idx][idx2] = Pawn.new(:black, self, [idx, idx2], "♟︎")
                elsif idx == 6
                    @rows[idx][idx2] = Pawn.new(:white, self, [idx, idx2],"♟︎")
                else
                    @rows[idx][idx2] = NullPiece.instance
                end

            end

        end
        fill_back_row

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

    def fill_back_row

                @rows[0][0] = Rook.new(:black, self, [0,0], "♜")
                @rows[0][7] = Rook.new(:black, self, [0,7], "♜")

                @rows[7][0] = Rook.new(:white, self, [7,0], "♜")
                @rows[7][7] = Rook.new(:white, self, [7,7], "♜")

                @rows[0][6] = Knight.new(:black, self, [0,6], "♞")
                @rows[0][1] = Knight.new(:black, self, [0,1], "♞")

                @rows[7][1] = Knight.new(:white, self, [7,1], "♞")
                @rows[7][6] = Knight.new(:white, self, [7,6], "♞")

                @rows[0][2] = Bishop.new(:black, self, [0,2], "♝")
                @rows[0][5] = Bishop.new(:black, self, [0,5], "♝")

                @rows[7][2] = Bishop.new(:white, self, [7,2], "♝")
                @rows[7][5] = Bishop.new(:white, self, [7,5], "♝")

                @rows[0][3] = Queen.new(:black, self, [0,3], "♛")
                @rows[7][3] = Queen.new(:white, self, [7,3], "♛")

                @rows[0][4] = King.new(:black, self, [0,4], "♚")
                @rows[7][4] = King.new(:white, self, [7,4], "♚")

    end


end
