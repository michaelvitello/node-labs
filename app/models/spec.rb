class Spec < ApplicationRecord
  belongs_to :component, optional: true
  belongs_to :category
  belongs_to :computer


end
