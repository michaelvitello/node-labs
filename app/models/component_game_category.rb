class ComponentGameCategory < ApplicationRecord
  belongs_to :component
  belongs_to :game_category
end
