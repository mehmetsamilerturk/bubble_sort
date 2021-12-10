numbers = [4, 3, 78, 2, 0, 2]
numbers.shuffle!
p "Numbers: #{numbers}"
def bubble_sort(numbers)
  n = numbers.length

  while true do
    swapped = false
    i = 1
    while i <= n - 1 do
      if numbers[i - 1] > numbers[i]
        numbers[i - 1], numbers[i] = numbers[i], numbers[i - 1]
        swapped = true
      end
      i += 1
    end
    # Passes already sorted values to make the process more optimized
    n = n - 1
    return numbers if swapped == false
  end
end

p bubble_sort(numbers)