class Component < ApplicationRecord
  has_many :specs
  belongs_to :category
  monetize :price_cents
end
