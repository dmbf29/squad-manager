class Player < ApplicationRecord
  belongs_to :squad_place
  acts_as_taggable_on :positions
  enum status: [:player, :prospect, :youth]

  def full_name
    "#{first_name} #{last_name}"
  end
end
