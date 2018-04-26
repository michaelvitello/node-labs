class Order < ApplicationRecord
  belongs_to :computer

  def price_two_decimals
    '%.2f' % (amount_cents / 100)
  end

end
