def swapValsInArray(arr, index)
    temp = arr[index + 1]
    arr[index + 1] = arr[index]
    arr[index] = temp

    return arr
end

def bubble_sort(arr)
    index = 0
    sorted = false
    swapped = false
    lastUnsortedIndex = arr.length() - 1

    until sorted
        if index != lastUnsortedIndex
            if arr[index] > arr[index+1]
                swapValsInArray(arr,index)
                index = index + 1
                swapped = true
            else
                index = index + 1
            end
        else
            if swapped == false
                sorted = true
            else
                lastUnsortedIndex = index - 1
                index = 0
                swapped = false
            end
        end
    end

    return arr
end

print(bubble_sort([0,38,0,8,238,918,21841,424]))