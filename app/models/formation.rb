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

class Formation < ApplicationRecord
  has_many :squads
end
