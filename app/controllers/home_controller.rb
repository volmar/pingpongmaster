class HomeController < ApplicationController
  def index
    @board = Board.all
  end

  def history
    #get loggeduserdata
    history = Game.getList(this.user)
  end

  def log
        #get data from frontend and save its
        #validate difference by 2 points
        
        game = Game.new
        game.user1 = user1
        game.user2 = user2
        game.score1 = score1
        game.score2 = score2
        game.save
      
        if score1 > score2
            board = Board.find_by(user: user1)
            board.score += score1
            board.save
        else
            board = Board.find_by(user: user2)
            board.score += score2
            board.save
        end
  end
end
