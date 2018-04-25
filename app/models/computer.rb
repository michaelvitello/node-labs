class Computer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :order, optional: true
  has_many :specs
  has_many :components, through: :specs

  monetize :final_price_cents

  after_create :populate_specs

  def is_computer_completed?
    completed_categories == Category::MANDATORIES.sort
  end

  def completed_categories
    components.map(&:category).map(&:slug).sort
  end

  def price_in_cents
    components.sum(:price_cents)
  end

  def computer_price_calculation
    calculation = price_in_cents / 100
    '%.2f' % calculation
  end

  protected

  def populate_specs
    Category.all.each do |category|
      specs.create!(computer: self, component: nil, category: category)
    end
  end
end
