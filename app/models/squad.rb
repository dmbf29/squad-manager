# == Schema Information
#
# Table name: squads
#
#  id           :bigint(8)        not null, primary key
#  user_id      :bigint(8)
#  formation_id :bigint(8)
#  name         :string
#  badge        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Squad < ApplicationRecord
  belongs_to :user
  belongs_to :formation
  has_many :squad_rows, dependent: :destroy
  has_many :squad_places, through: :squad_rows
  has_many :players, through: :squad_places
  after_create :build_squad_rows

  def build_squad_rows
    return if squad_rows.count >= 4
    (1..4).to_a.each do |number|
      SquadRow.create(
        number: number.to_i,
        squad: self
      )
    end
  end
end
