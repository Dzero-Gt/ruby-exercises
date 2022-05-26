module Checker
  def check_for_win(board, turn)
    win = false
    temp = false
    board[1].all? { |box| box == turn } ? win = true: 0
    board[2].all? { |box| box == turn } ? win = true: 0
    board[3].all? { |box| box == turn } ? win = true: 0
    for i in 0..2 do
        temp = true
      for j in 0..2 do
        if board[i][j] != turn
          temp = false
        end
      end
      temp == true ? win = true : 0
    end
  end
end


class Board
    def initialize
        @board = Array.new(3) { Array.new(3) }
    end
    include Checker
end


