class Cell
  def alive?
    kind_of?(LiveCell)
  end

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
    neighbors.find_all(&:alive?)
  end
end

class LiveCell < Cell; end
class DeadCell < Cell; end
