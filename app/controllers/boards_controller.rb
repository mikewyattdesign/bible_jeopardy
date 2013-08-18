class BoardsController < ApplicationController
  def index
  end

  def edit
  end

  def show
    unless Board.where(id: params[:id]).empty?
        @board = Board.find(params[:id]) 
    else
        redirect_to :root, notice: "Board not found"
    end
  end

  def new
  end

  def random_practice
    prng = Random.new(Time.now.to_i)
    random_board = prng.rand(1..Board.all.count)
    redirect_to board_path(Board.find(random_board))
  end
end
