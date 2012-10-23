class LiveCell
  def neighbors
    @neighbors ||= []
  end

  def next_generation
    DeadCell.new
  end
end

class DeadCell
end
