class Component < ApplicationRecord
  has_many :specs
  monetize :price_cents
end
