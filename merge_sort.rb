
def merge_sort(array)
    if array.length < 2
        return array
    end
    # sort left half
    left = merge_sort(array.slice!(0 , array.length / 2.floor))
    # sort right half
    right = merge_sort(array)
    # merge them together
    sorted_array = []
    while left.length > 0 || right.length > 0
        if left.length == 0
            sorted_array.push(right).flatten!
            break
        elsif right.length == 0
            sorted_array.push(left).flatten!
            break
        end
        if left.first < right.first
            sorted_array.push(left.shift)
        else
            sorted_array.push(right.shift)
        end
    end
    sorted_array
end
