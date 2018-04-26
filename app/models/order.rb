class Order < ApplicationRecord
  belongs_to :computer, optional: true
  monetize :amount_cents

  validate :order_contains_mandatory_components

private

  def order_contains_mandatory_components
    if !self.computer.is_computer_completed?
      errors.add(:order, "Computer must be completed")
    end
  end

end
