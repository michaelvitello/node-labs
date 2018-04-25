class Category < ApplicationRecord
  MANDATORIES = [
    "cases",
    "motherboards",
    "processors",
    "memory",
    "power_supply",
    "storage",
    "graphic_cards"
  ]

  has_many :components

end
