class BeerSong
  def self.recite(bottle_count, times_left)
    lyrics = ""
    while times_left > 0
      lyrics += "#{number_of_bottles(bottle_count).capitalize} of beer on the wall, #{number_of_bottles(bottle_count)} of beer.\n"
      lyrics += number_to_take(bottle_count)
      if bottle_count == 0
        bottle_count = 99
      else
        bottle_count -= 1
      end
      lyrics += ", #{number_of_bottles(bottle_count)} of beer on the wall.\n"
      times_left -= 1
      lyrics += "\n" unless times_left == 0
    end
    lyrics
  end

  def self.number_of_bottles(count)
    if count > 1
      "#{count} bottles"
    elsif count == 1
      "1 bottle"
    else
      "no more bottles"
    end
  end

  def self.number_to_take(count)
    if count == 0
      "Go to the store and buy some more"
    elsif count == 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end
