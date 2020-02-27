# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2] #WC[0]
  [3, 4, 5] #WC[1]
  [6, 7, 8] #WC[2]
  [0, 3, 6] #WC[3]
  [1, 4, 7] #WC[4]
  [2, 5, 8]
  [0, 4, 8]
  [6, 4, 2]
]

def won?(board)
  in_a_row_x = 0
  in_a_row_o = 0
  WIN_COMBINATIONS.each do |possibility|
    possibility.each do |spot|
      if board[spot] == "X" 
        in_a_row_x += 1
      elsif board[spot] == "O"
        in_a_row_o += 1
      end
      if (in_a_row_o == 3 || in_a_row_x == 3)
        return true
      end
    end
  end
end
