class Component < ApplicationRecord
  has_many :configurations
  monetize :price_cents
end
