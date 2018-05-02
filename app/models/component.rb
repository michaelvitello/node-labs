class Component < ApplicationRecord
  has_many :specs
  has_many :component_game_categories, dependent: :destroy
  has_many :game_categories, through: :component_game_categories
  belongs_to :category
  monetize :price_cents

  def price_dollar_sign
    return self.price ? "$#{self.price}" : ""
  end

end
