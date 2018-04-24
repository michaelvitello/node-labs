class Computer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :order, optional: true
  has_many :specs
  
  def is_computer_completed?
    # in progress
  end



end
