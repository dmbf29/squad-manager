class Player < ApplicationRecord
  belongs_to :squad_place

  def full_name
    "#{first_name} #{last_name}"
  end
end
