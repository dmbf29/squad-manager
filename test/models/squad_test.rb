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

require 'test_helper'

class SquadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
