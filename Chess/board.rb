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
        # def initialize
        #     @rows = Array.new(8) {Array.new(8)}


        #     @rows.each_with_index do |row, idx|
        #         row.each_with_index do | col, idx2|
        #             if [0,1].include?(idx)
        #                 @rows[idx][idx2] = Piece.new(:black, self, [idx, idx2])
        #             elsif [6,7].include?(idx)
        #                 @rows[idx][idx2] = Piece.new(:white, self, [idx, idx2])
        #             else
        #                 @rows[idx][idx2] = NullPiece.instance
        #             end
        #         end
        #     end

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





                # @rows[0][7] = Rook.new(:black, self, [0,7], "♜")
                # @rows[0][7] = Rook.new(:black, self, [0,7], "♜")
                # @rows[0][7] = Rook.new(:black, self, [0,7], "♜")
                # @rows[0][7] = Rook.new(:black, self, [0,7], "♜")
                # @rows[0][7] = Rook.new(:black, self, [0,7], "♜")


                # if idx ==
                #     @rows[0][0] = Pawn.new(:black, self, [idx, idx2], "")
                # elsif idx == 6
                #     @rows[idx][idx2] = Pawn.new(:white, self, [idx, idx2],"♟︎")
                # else
                #     @rows[idx][idx2] = NullPiece.instance
                # end



    end


end
