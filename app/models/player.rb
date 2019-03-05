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

  POSITIONS = %w(GK LB CB RB DM LM CM RM CAM LW CF ST RW)
  BADGES = ["futbol", "seedling", "star", "crown", "heart", "gem", "trash", "lemon", "shield-alt"]
  FACES = %w(face_1 face_2 face_3 face_4 face_5 face_6 face_7)

  def full_name
    "#{first_name} #{last_name}"
  end

  def last_initial
    "#{first_name[0]}. #{last_name}"
  end

  def give_order_number
    return if order

    self.order = squad_place.players.count
    save
  end
end
