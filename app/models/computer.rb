class Computer < ApplicationRecord
  belongs_to :user
  belongs_to :order
  has_many :configurations
end
