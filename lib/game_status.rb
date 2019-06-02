# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do | win_comb |
    # if board[win_comb[0]] == board[win_comb[1]] == board[win_comb[2]]
    #   return true
    # end
    flag = win_comb.all?{ |s| board[s] == "X"}
    if flag  
      return true
    end 
    flag = win_comb.all?{|s| board[s]=="O"}
    if flag { return true }
  end
  return false
end
