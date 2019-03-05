# == Schema Information
#
# Table name: squad_rows
#
#  id         :bigint(8)        not null, primary key
#  number     :string
#  squad_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SquadRow < ApplicationRecord
  belongs_to :squad
  has_many :squad_places, dependent: :destroy
  has_many :players, through: :squad_places
  after_create :build_squad_places

  def to_label
    number
  end

  def build_squad_places
    case number
    when 4
      SquadPlace.create(
        name: "GK",
        number: 1,
        squad_row: self
      )
      SquadPlace.create(
        name: "On Loan",
        number: 2,
        squad_row: self
      )
      SquadPlace.create(
        name: "Other",
        number: 3,
        squad_row: self
      )
    when 3
      (1..squad.formation.dfs).to_a.each do |number|
        SquadPlace.create(
          name: "DF",
          number: number.to_i,
          squad_row: self
        )
      end
    when 2
      (1..squad.formation.mfs).to_a.each do |number|
        SquadPlace.create(
          name: "MF",
          number: number.to_i,
          squad_row: self
        )
      end
    when 1
      (1..squad.formation.fws).to_a.each do |number|
        SquadPlace.create(
          name: "FW",
          number: number.to_i,
          squad_row: self
        )
      end
    end
    if number > 4
      SquadPlace.create(
        name: "New",
        number: squad.squad_places.count + 1,
        squad_row: self
      )
    end
  end
end
