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

    array.each_with_index do | element, index |
      array.delete_at(index) if array[index] == array[index + 1]
    end

    array
  end
end
