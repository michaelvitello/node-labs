class Order < ApplicationRecord
  has_one :computer
  monetize :amount_cents

  validate :order_contains_mandatory_components

private

  def order_contains_mandatory_components
    if !Computer.find(self.computer_id).is_computer_completed?
      errors.add(:order, "Computer must be completed")
    end
  end

end
