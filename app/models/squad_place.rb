class SquadPlace < ApplicationRecord
  belongs_to :squad
  has_many :players

  def self.autocreate(position_names, squad)
    position_names.each_with_index do |position_name, index|
      SquadPlace.create(name: position_name, number: index + 1, squad: squad)
    end
  end
end
