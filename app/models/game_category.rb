class GameCategory < ApplicationRecord
  has_many :component_game_categories, dependent: :destroy
  has_many :components, through: :component_game_categories
end
