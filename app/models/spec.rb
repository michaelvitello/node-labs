class Spec < ApplicationRecord
  belongs_to :component, optional: true
  belongs_to :category
  belongs_to :computer

  scope :with_component, -> { where.not(component_id: nil) }
  scope :without_component, -> { where(component_id: nil) }

end
