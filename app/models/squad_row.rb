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
end
