require 'pry'

class SortedList
  def initialize(input)
    @set = input
  end

  def result
    remove_dups_from_array(@set)
  end

  private

  def remove_dups_from_array(array)
    array.sort! { |x,y| x <=> y }

    count = 0

    while array[count]
      if array[count] == array[count + 1]
        array.delete_at(count)
      else
        count += 1
      end
    end
    array
  end
end
