class Order < ApplicationRecord
  has_one :computer
  monetize :amount_cents

  validate :order_contains_mandatory_components

private

  def order_contains_mandatory_components
    errors.add(:base, "Computer must be completed") unless computer.is_computer_completed?
  end
end
