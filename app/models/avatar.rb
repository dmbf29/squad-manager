class Avatar < ApplicationRecord
  has_many :players

  def to_label
    photo
  end
end
