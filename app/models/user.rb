class User < ApplicationRecord
  has_many :computers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def clear_dummy_computers!
    computers.map do |computer|
      computer.destroy if computer.components.empty?
    end

    computers.reload
  end
end
