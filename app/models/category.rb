class Category < ApplicationRecord
  MANDATORIES = [
    "cases",
    "graphic_cards",
    "memory",
    "motherboards",
    "power_supply",
    "processors",
    "storage"
  ]

  has_many :components

end
