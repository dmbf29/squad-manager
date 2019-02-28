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

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
