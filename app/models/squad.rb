class Squad < ApplicationRecord
  belongs_to :user
  belongs_to :formation
  has_many :squad_places
  after_create :build_squad_places

  def build_squad_places
    return if squad_places.count >= 16
    positions = ["GK"]
    formation.dfs.times { positions << "DF"}
    formation.mfs.times { positions << "MF"}
    formation.fws.times { positions << "FW"}
    positions << "Bench"
    positions << "Other"

    SquadPlace.autocreate(positions, self)
  end
end
