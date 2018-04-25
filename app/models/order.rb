class Order < ApplicationRecord
  has_many :computers

  def price_two_decimals
    '%.2f' % (amount_cents / 100)
  end

end
