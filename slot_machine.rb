class SlotMachine
  def initialize
  end

  OPTIONS = ["cherry", "seven", "bell", "star", "joker"]

  def score(reel)
    if reel.uniq.length == 1
      return (OPTIONS.index(reel[0])+1)*10
    elsif reel.uniq.length == 2
      return (OPTIONS.index(reel.sort[1])+1)*5
    else
      return 0
    end
  end

end
