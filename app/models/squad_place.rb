class SquadPlace < ApplicationRecord
  belongs_to :squad
  has_many :players

  def self.autocreate(position_names)
    position_names.each_with_index do |position_name, index|
      SquadPlace.create(name: position_name, number: index + 1, squad: self)
    end
  end
end
