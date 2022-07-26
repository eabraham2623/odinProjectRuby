# Return the maximum sum, given the sub array size of k
def maximumSubarray(arr, subArraySize)
    maximum = 0
    initialIndex = 0
    sum = 0

    while initialIndex < subArraySize
        sum = sum + arr[initialIndex] 
        initialIndex = initialIndex + 1
    end
    runningIndex = 1
end

maximumSubarray([3,1,8,4], 3)