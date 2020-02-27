# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #WC[0]
  [3, 4, 5], #WC[1]
  [6, 7, 8], #WC[2]
  [0, 3, 6], #WC[3]
  [1, 4, 7], #WC[4]
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
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
  return false
end

def full?(board)
  full = board.all? do |space|
    (space == "X" || space == "O")
  end
  return full
end

def draw?(board)
  if (full?(board))
    if !(won?(board))
      return true
    end
  else
    return false
  end
end

def over?(board)
  if (draw(board) || won?(board))
    return true
  else
    return false
  end
end
