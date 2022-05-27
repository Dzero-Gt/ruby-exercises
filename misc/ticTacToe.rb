module Checker
  def check_for_win(board, turn)
    win = false
    temp = false
    board[0].all? { |box| box == turn } ? win = true : 0
    board[1].all? { |box| box == turn } ? win = true : 0
    board[2].all? { |box| box == turn } ? win = true : 0
    for i in 0..2 do
        temp = true
      for j in 0..2 do
        if board[j][i] != turn
          temp = false
        end
      end
      temp == true ? win = true : 0
    end
    temp = true
    for i in 0..2 do
        if board[i][i] != turn
            temp = false
        end
    end
    temp == true ? win = true : 0
    temp = true
    for i in 0..2 do
        j = 2 - i
        if board[i][j] != turn
            temp = false
        end
    end
    temp == true ? win = true : 0
    return win
  end
end


class Board
    def initialize
      @board = Array.new(3) { Array.new(3, "B") }
      @turn = "X"
    end

    public 
    def show_board
      p @board[0]
      p @board[1]
      p @board[2]
    end
    include Checker
      def change_turn
        @turn == "X" ? @turn = "O" : @turn = "X"
      end
      def row
        @row = 0
      end
      def col
        @col = 0
      end
    
    def run_game
      @valid_input = false
      until win_condition != false
        while @valid_input == false
            puts "It's the #{@turn} player's turn"
            puts "Enter the row you want:"
            row = gets.to_i - 1
            puts "Enter the column you want"
            col = gets.to_i - 1
            if row.between?(0, 2) && col.between?(0, 2) && @board[row][col] == "B"
            @valid_input = true
            else
              puts "Invalid input"
            end

        end
        @board[row][col] = @turn
        show_board
        win_condition = check_for_win(@board, @turn)
        if win_condition == true
          puts "Congragulations player #{@turn}, you won!"
          exit
        end
        change_turn
        @valid_input = false
      end
      
    end

    private
      
      def win_condition
        @win = false
      end
end


tempb = Board.new
tempb.run_game

