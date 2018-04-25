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

  protected

  def populate_specs
    Category.all.each do |category|
      specs.create!(computer: self, component: nil, category: category)
    end
  end
end
