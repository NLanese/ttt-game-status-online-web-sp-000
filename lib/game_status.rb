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

def won?(board){
  counter = 0
  until counter == 8
    
}

  
def over?(board)
  if (draw(board) || won?(board))
    return true
  else
    return false
  end
end
