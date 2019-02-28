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

require 'test_helper'

class SquadPlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
