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
  [2, 5, 8], #WC[5]

  [0, 4, 8], #WC[6]
  [6, 4, 2]  #WC[7]
]

def won?(board)
  count = 0
  xCount = 0
  oCount = 0
  WIN_COMBINATIONS[counter].each do | space |
    if board[space] == "X"
      xCount += 1
    elsif board[space] == "O"
      oCount += 1
    end
    if (oCount == 3 || xCount == 3)
      return true
    else
      oCount = 0
      xCount = 0
      counter += 1
    end
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
