# == Schema Information
#
# Table name: players
#
#  id             :bigint(8)        not null, primary key
#  first_name     :string
#  last_name      :string
#  nation         :string
#  age            :integer
#  potential_high :integer
#  potential_low  :integer
#  rating         :integer
#  badge          :string
#  status         :integer
#  photo          :string
#  squad_place_id :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Player < ApplicationRecord
  belongs_to :squad_place
  acts_as_taggable_on :positions
  enum status: [:player, :prospect, :youth]
  after_create :give_order_number

  def full_name
    "#{first_name} #{last_name}"
  end

  def give_order_number
    return if order

    self.order = squad_place.players.count
    save
  end
end
