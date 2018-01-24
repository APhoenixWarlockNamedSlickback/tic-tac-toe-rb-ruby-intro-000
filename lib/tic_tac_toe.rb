#<<<<<<< HEAD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#=======
board = ["O", " ", " ", " ", " ", " ", " ", " ", "X"]

#gameturn = 0

current_player = "X"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#>>>>>>> 7836ca0186dd65722b721a62c35042c3a70c1b3f
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def input_to_index(index)
  index.to_i - 1
end

#<<<<<<< HEAD
def current_player(board)
  if turn_count(board) % 2 == 0
#=======
#index = input_to_index(input)

def current_player(board)
  if turn_count(board) % 2 == 1
#>>>>>>> 7836ca0186dd65722b721a62c35042c3a70c1b3f
    current_player = "X"
  else
    current_player = "O"
  end
end

#<<<<<<< HEAD
def move(board, index, current_player)
  board[index] = current_player
#=======
def move(board, index, player = "X")
#  if turn_count % 2 == 1
#    current_player = "X"
#  else
#    current_player = "O"
#  end
  board[index] = player
#>>>>>>> 7836ca0186dd65722b721a62c35042c3a70c1b3f
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
#<<<<<<< HEAD
  index = input_to_index(input)
  if !valid_move?(board,index)
    turn(board)
  end
    move(board, index, current_player(board))
#=======
  #index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
    move(board, input, current_player(board))
#>>>>>>> 7836ca0186dd65722b721a62c35042c3a70c1b3f
    display_board(board)
end

def turn_count(board)
  gameturn = 0
  board.each do |turn|
    if turn != " "
      gameturn +=1
    end
  end
  gameturn
end


def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    if board[win_index[0]] == "X" && board[win_index[1]] == "X" && board[win_index[2]] == "X" ||
      board[win_index[0]] == "O" && board[win_index[1]] == "O" && board[win_index[2]] == "O"
      return win_index
    end
  end
  return false
end

def full?(board)
  if board.include? " "
    return false
    else
      true
    end
  end

  def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    winner = board[won?(board)[0]]
  end
end

def play(board)
#<<<<<<< HEAD
  while !over?(board)
    turn(board)
  end
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
#=======
  until turn_count == 9
    turn(board)
  end
#>>>>>>> 7836ca0186dd65722b721a62c35042c3a70c1b3f
end
