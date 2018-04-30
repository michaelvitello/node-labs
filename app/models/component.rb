class Component < ApplicationRecord
  has_many :specs
  belongs_to :category
  monetize :price_cents

  def price_dollar_sign
    return self.price ? "$#{self.price}" : ""
  end

end
