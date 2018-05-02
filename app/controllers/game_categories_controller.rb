class GameCategoriesController < ApplicationController

  def index
    @game_categories = GameCategory.all
  end
end
