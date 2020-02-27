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
  xCount = 0
  oCount - 0
  until counter == 8
    WIN_COMBINATIONS[counter].each do | spot | {
      if (board[spot] == "X"){
        xCount += 1
      elsif (board[spot] == "O")
        oCount += 1
      }
      if (xCount == 3 || oCount == 3){
        return true
      else
        xCount = 0
        oCount = 0
        counter += 1
      }
    }
}


def over?(board)
  if (draw(board) || won?(board))
    return true
  else
    return false
  end
end
