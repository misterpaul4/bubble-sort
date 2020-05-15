def bubble_sort(arr)
  to_ignore = arr.length - 1
  swapped = nil
  until swapped == false
    swapped = nil
    (0...to_ignore).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    if swapped .nil?
      swapped = false
    else
      to_ignore -= 1
    end
  end
  arr
end

def bubble_sort_by(arr)
  to_ignore = arr.length - 1
  swapped = nil
  until swapped == false
    swapped = nil
    (0...to_ignore).each do |i|
      if (yield arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    if swapped .nil?
      swapped = false
    else
      to_ignore -= 1
    end
  end
  arr
end
