class ScoresController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
  end

  private

  def scores_params
  	params.require(:score).permit(:value)
  end
end
