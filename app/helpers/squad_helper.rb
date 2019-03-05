module SquadHelper

  def position_class(position)
    if %w(LW CF ST RW).include?(position)
      'fw'
    elsif %w(DM LM CM RM CAM).include?(position)
      'mf'
    elsif %w(LB CB RB).include?(position)
      'df'
    elsif 'GK' == position
      'gk'
    end
  end
end
