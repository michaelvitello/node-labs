class Computer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :order, optional: true
  has_many :specs
  has_many :components, through: :specs

  monetize :final_price_cents

  after_create :populate_specs

  def is_computer_completed?
    (completed_categories & Category::MANDATORIES.sort) == Category::MANDATORIES.sort
  end

  def completed_categories
    components.map(&:category).map(&:slug).sort
  end

  def total_price
    components.map(&:price).sum
  end

  def sorted_specs
    specs.sort_by(&:position)
  end

  def case_number
    specs.where(
      category_id: Category.find_by(slug: Spec::STEPS.values.first)
    ).first.try(:component).try(:rating)
  end

  protected

  def populate_specs
    Category.all.each do |category|
      spec = specs.new(computer: self, component: nil, category: category)
      spec.save(validate: false)
    end
  end
end
