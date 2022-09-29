def subArraySum(arr, initialSize)
    subArray = arr.slice(0, initialSize)
    sum = 0

    subArray.each do |element|
        sum = sum + element
    end
    return sum
end

# Return the maximum sum, given the sub array size of k
def maximumSubarray(arr, subArraySize)
    # Set maximum sum as initial summation
    # initial summation to be used to calculate running sums in main loop
    maximumSum = subArraySum(arr, subArraySize)
    currentSubArraySum = maximumSum

    # Starting at 2nd index, loop through until reaching index that is the last subarray
    for index in 1..arr.size()-subArraySize
        # Subtract the previous index's value from current subarray and add the next index's value
        currentSubArraySum = (currentSubArraySum - arr[index - 1]) + arr[index + subArraySize - 1]
        if currentSubArraySum > maximumSum 
            maximumSum = currentSubArraySum
        end
    end
    return maximumSum
end


puts(maximumSubarray([1,2,3,4,5,6],3))
