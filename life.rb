class LiveCell
  def neighbors
    @neighbors ||= []
  end

  def next_generation
    if living_neighbors.size > 1
      LiveCell.new
    else
      DeadCell.new
    end
  end

  def living_neighbors
    neighbors.find_all { |n| n.kind_of?(LiveCell) }
  end
end

class DeadCell
end
