# == Schema Information
#
# Table name: squad_places
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  number       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  squad_row_id :bigint(8)
#

class SquadPlace < ApplicationRecord
  belongs_to :squad_row
  has_many :players, dependent: :destroy

  def self.autocreate(position_names, squad)
    position_names.each_with_index do |position_name, index|
      SquadPlace.create(name: position_name, number: index + 1, squad: squad)
    end
  end
end
