class CategoriesController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
  end

  private

  def categories_params
  	params.require(:category).permit(:name)
  end
end
