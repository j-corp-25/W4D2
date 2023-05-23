require_relative "piece"


class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}


        @rows.each_with_index do |row, idx|
            row.each_with_index do | col, idx2|
                if [0,1,6,7].include?(idx)
                    @rows[idx][idx2] = Piece.new(:white)
                end
            end
        end
        
            # (0..7).each do |pos|
        #     @rows[pos] = "Test"
        # end

            # if pos == 0 || pos == 1
        #         7.times do
        #             @rows[pos] = "Test"
        #         end
        #     end
        # end

            # (0..7).each do |pos|
            #     if pos == 0 || pos == 7
            #         row[pos] = "Test"
            #     end
            # end




            # if pos == 0 || pos == 1
            #     rows


            # row.each_with_index do |ele,idx2|
            #     pos = [idx1, idx2]
            #     if pos.first == 0 || pos.first == 1
            #         ele = Piece.new(:white)
            #     end
            # end



        # end

    end
    #     if row == 0 || row == 1
    #         @rows[row] = Piece.new(:white)
    #     end
    # end

    #     # (0..7).each do |pos|
            # if pos == 0 || pos == 7
            #     row[pos] = "Test"


        # 2.times do
        #     row << Piece.new(:white)
        # end
        #  @rows.index(row)
        # row.each do |ele|
        #     p ele.pos
        # end




    # p Board.new

    def [](pos)
      row, col = pos
      @rows[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end


    def move_piece(start_pos, end_pos)
        raise "no piece there" if @row.start_pos == nil


    end


end
