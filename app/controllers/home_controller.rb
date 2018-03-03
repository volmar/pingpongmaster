class HomeController < ApplicationController
  def index
    board = Board.new
    return board
  end

  def history
    #get loggeduserdata
    history = Game.getList(this.user)
  end

  def log
        #get data from frontend and save it
        game = Game.new
        game.user1 = user1
        game.user2 = user2
        game.score1 = score1
        game.score2 = score2
        game.save
        board = Board.new
        if score1 > score2 do
            board.update(user1, +score1)
        else
            board.update(user2, +score2)
        end
  end
end
