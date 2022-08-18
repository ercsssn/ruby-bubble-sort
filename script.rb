sample_array = [4,3,78,2,0,2]


def bubble_sort(number_array)
    number_array.each_with_index do |index, value|
        puts index
        puts value
    end
end






#TOP 1 answer
def bubble_sort array
unsorted = true
while unsorted do
    i = 0
    unsorted = false
    while i < (array.length - 1)
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            unsorted = true
        end
        i += 1
    end
end
print array    
end

bubble_sort([4,3,78,2,0,2])
puts ""
# => [0,2,2,3,4,78]

def bubble_sort_by array
unsorted = true
while unsorted do
    i = 0
    unsorted = false
    while i < (array.length - 1)
        # If statement that yields to the block of code to calculate the difference of left.length & right.length
        if (yield array[i], array[i + 1]).to_i >= 0
            # If difference >= 0, then second word is shorter and needs to switch places
            array[i], array[i + 1] = array[i + 1], array[i]
            unsorted = true
        end
        i += 1
    end
end
print array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
left.length - right.length
end
puts ""
# => ["hi", "hey", "hello"]

def bubble_sort_by_explanation array
puts "The beginning order of the array: #{array}"
puts ""
unsorted = true
while unsorted do
    i = 0
    unsorted = false
    while i < (array.length - 1)
        puts "Yield to calculate the difference of #{array[i]}.length - #{array[i + 1]}.length"
        difference = (yield array[i], array[i + 1]).to_i
        puts "The difference is #{difference}."
        puts "If is < 0 the order second word is longer and nothing changes"
        if (difference >= 0)
            puts "BUT IF THE DIFFERENCE >= 0 the order second word is shorter & needs to be switched!"
            puts "This next line switches the words #{array[i]} and #{array[i + 1]}"
            array[i], array[i + 1] = array[i + 1], array[i]
            unsorted = true
        end
        i += 1
        puts "#{array} is the current array in while loop"
        puts ""
    end
end
puts "The ending order of the array: #{array}"
end

puts ""
puts "EXPLANATION:"
bubble_sort_by_explanation(["labrador", "pug", "beagle"]) do |left,right|
puts "Calculate the difference of #{left}.length - #{right}.length"
left.length - right.length
end
puts ""
# => ["pug", "beagle", "labrador"]

def bubble_sort(arr)
  for i in 0...arr.length
    sorted = true

    for k in 0...(arr.length - i - 1)
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        sorted = false
      end
    end

    break if sorted
  end
  arr
end

data = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]

p bubble_sort(data)

def bubble_sort array
    swapped = true
    checker = (array.length-1)
    while swapped
        for index in 0...(array.length-1)
            if array[index] > array[index+1]
                swap = array[index]
                array[index] = array[index+1]
                array[index+1] = swap
            end
        end

        checker = checker - 1
        if checker == 0
            swapped = false
        end
    end
    array
end

bubble_sort([4,3,78,2,0,2])

