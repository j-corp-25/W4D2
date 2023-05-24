module Stepable
    def moves
      all_moves = []


      # create array to collect moves

      move_diffs.each do |diff|
        x = diff[0]
        y = diff[1]

        @pos[0] += x
        @pos[1] += y

        new_move = [@pos[0], @pos[1]]

        all_moves << new_move if @board.valid_move?(new_move)
      end
   

      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color

      # return the final array of moves
    end

    private

    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end


  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
