class Configuration < ApplicationRecord
  belongs_to :component
  belongs_to :computer
end
