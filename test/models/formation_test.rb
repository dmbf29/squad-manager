# == Schema Information
#
# Table name: formations
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  number     :string
#  dfs        :integer
#  mfs        :integer
#  fws        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FormationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
